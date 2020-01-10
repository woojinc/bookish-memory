def uniquePrefix(wordsList):
    output = [""] * len(wordsList)
    uniqueIndex = list(range(len(wordsList)))

    unique = False
    strIndex = 0

    while not unique: # O(m) where m is a length of longest prefix
        unique = True
        for idx in uniqueIndex: # O(n)
            prefix = wordsList[idx][strIndex]
            output[idx] += prefix

        for idx in uniqueIndex:  # O(n)
            if output.count(output[idx]) == 1 or len(wordsList[idx]) - 1 == strIndex:  # O(n)
                uniqueIndex.remove(idx) # O(n)
            else:
                unique = False
                
        strIndex += 1

    return output

# Total time complexity => O(m * (n + n * (n + n))) => O(mn^2)

class Node:
    def __init__(self):
        self.children = {}
        self.endOfTheWord = False
        self.frequency = 1

class Trie:
    def __init__(self):
        self.root = Node()

    def insert(self, word, root=None):
        if root is None:
            root = self.root

        letter = word[0]

        if letter not in root.children:
            root.children[letter] = Node()
        else:
            root.children[letter].frequency += 1

        if len(word) != 1:
            self.insert(word[1:], root.children[letter])
        else:
            root.children[letter].endOfTheWord = True

    def findShortestAllPrefix(self, root=None, word="", output=[]):
        if root is None:
            root = self.root

        for letter in root.children:
            childRoot = root.children[letter]
            if childRoot.frequency == 1:
                output.append(word + letter)
            else:
                if childRoot.endOfTheWord:
                    output.append(word + letter)
                self.findShortestAllPrefix(childRoot, word + letter, output)

        return output


print(uniquePrefix(["zebra", "dog", "duck", "dove", "doved", "doves"]))

trie = Trie()
trie.insert("zebra")
trie.insert("dog")
trie.insert("duck")
trie.insert("dove")
trie.insert("doved")
trie.insert("doves")
print(trie.findShortestAllPrefix())
