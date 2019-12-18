# If you want to jumpstart the process of talking to us about this role, 
# here’s a little challenge: write a program that outputs the largest unique 
# set of characters that can be removed from this paragraph without letting its 
# length drop below 50. For example: [‘H’, ‘i’, ‘!’, ‘ ’]

# import collections

# def solution(paragraph):
#     pLength = len(paragraph)
#     charSets = []
#     if pLength < 50:
#         return charSets

#     pCount = collections.Counter(paragraph)
    
#     for char, charCount in reversed(pCount.most_common()):
#         pLength -= charCount
#         print("hello")
#         if pLength < 50:
#             return charSets
#         else:
#             charSets.append(char)
    
#     return charSets

import collections

def solution(paragraph, charLimit = 50):
    pCount = collections.Counter(paragraph)
    pUniqueChars = list(pCount.keys())
    removeCounter = 0
    for char, charCount in pCount.most_common():
        removeCounter += charCount
        pUniqueChars.remove(char)
        if removeCounter >= charLimit:
            return pUniqueChars
    return pUniqueChars

def solutionGen(paragraph, reduced):
    # charList = list(paragraph)
    dupP = paragraph[:]
    for char in reduced:
        dupP = dupP.replace(char, "")
    return dupP




paragraph = "If you want to jumpstart the process of talking to us about this role, here’s a little challenge: write a program that outputs the largest unique set of characters that can be removed from this paragraph without letting its length drop below 50. For example: [‘H’, ‘i’, ‘!’, ‘ ’]"
# paragraph = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
# count = collections.Counter(paragraph, 30)
reduced = solution(paragraph, 30)
print(reduced)
# print(solutionGen(paragraph, reduced))
# print(paragraph)
