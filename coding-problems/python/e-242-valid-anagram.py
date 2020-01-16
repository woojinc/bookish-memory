# import collections
from collections import Counter
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:

        if len(s) != len(t):
            return False

        countS = Counter(s)
        countT = Counter(t)
        # countS = collections.Counter(s)
        # countT = collections.Counter(t)

        for char, count in countS.items():
            if countT.get(char) != count:
                return False

        return True

sol = Solution()
print(sol.isAnagram("anagram", "nagaram"))