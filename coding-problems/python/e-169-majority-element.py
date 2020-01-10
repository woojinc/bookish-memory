import collections

class Solution:
    def majorityElement(self, nums) -> int:
        counter = collections.Counter(nums)
        for key, value in counter.items():
            if value > len(nums) / 2:
                return key
            
            
        