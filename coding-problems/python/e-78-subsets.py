class Solution:
    def subsets(self, nums: [int]) -> [[int]]:
        output = [[]]
        
        for num in nums:
            output += [curr + [num] for curr in output]
            
        return output