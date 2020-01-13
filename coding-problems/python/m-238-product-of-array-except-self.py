class Solution:
    def productExceptSelf(self, nums):
        length = len(nums)
        left = [1] * length
        right = [1] * length
        output = [0] * length
        for index in range(1, length):
            left[index] = nums[index - 1] * left[index - 1]

        for index in reversed(range(length - 1)):
            right[index] = nums[index + 1] * right[index + 1]

        for index in range(length):
            output[index] = left[index] * right[index]

        return output
