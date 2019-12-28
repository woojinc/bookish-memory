class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        for x in nums:
            if x == 0:
                nums.remove(0)
                nums += [0]
