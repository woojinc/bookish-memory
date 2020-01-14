from random import shuffle

def insertionSort(nums):
    
    for idx in range(1, len(nums)):
        currentNum = nums[idx]
        for jdx in reversed(range(-1,idx)):
            nums[jdx + 1] = nums[jdx]
            if currentNum > nums[jdx]:
                break
        nums[jdx + 1] = currentNum
    
    return nums




nums = list(range(1, 10))


print("Nums: ", nums)
shuffle(nums)
# nums = list(reversed(nums))
print("Nums: ", nums)

print(insertionSort(nums))
