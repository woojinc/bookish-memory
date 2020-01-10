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
            if output.count(output[idx]) == 1: #O(n)
                uniqueIndex.remove(idx) # O(n)
            else:
                unique = False
                
        strIndex += 1

    return output

# Total time complexity => O(mn^3)

class Node:
    def __init__(self):
        self.children = {}
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

    def findShortestAllPrefix(self, root=None, word="", output=[]):
        if root is None:
            root = self.root

        for letter in root.children:
            if root.children[letter].frequency != 1:
                self.findShortestAllPrefix(root.children[letter], word + letter, output)
            else:
                output.append(word + letter)

        return output


print(uniquePrefix(["zebra", "dog", "duck", "dove"]))

trie = Trie()
trie.insert("zebra")
trie.insert("dog")
trie.insert("duck")
trie.insert("dove")
print(trie.findShortestAllPrefix())
