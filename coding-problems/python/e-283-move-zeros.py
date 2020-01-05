class Solution:
    def moveZeroes(self, nums) -> None:
        if 0 in nums:
            for x in range(nums.count(0)):
                # this works because nums.remove(0) will remove the first zero from the beginning
                nums.remove(0)
                nums += [0]