class Solution:
    def containsDuplicate(self, nums: [int]) -> bool:
        numsSet = set(nums)

        if len(numsSet) != len(nums):
            return True

        return False

#         numsSet = set()

#         for num in nums:
#             if num in numsSet:
#                 return True
#             numsSet.add(num)

#         return False

sol = Solution()

nums = [1,2,3,4,1]

print(sol.containsDuplicate(nums))
