def longestPrefix(strings):
    prefix = ""
    index = 0
    longestPrefixFound = False

    while not longestPrefixFound:
        currentLetter = strings[0][index]

        for word in strings:
            if len(word) - 1 < index or currentLetter != word[index]:
                longestPrefixFound = True
        
        if not longestPrefixFound:
            prefix += currentLetter
            index += 1

    return prefix

strings = ["abc", "abcd", "abc", "ab"]

print(longestPrefix(strings))
