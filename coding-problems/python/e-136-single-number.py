# class Solution:
def singleNumber(nums):
    setNums = set()
    
    for num in nums:
        if (num in setNums):
            setNums.discard(num)
        else:
            setNums.add(num)
    
    return setNums.pop()

print(singleNumber(nums = [1,2,2]))
                