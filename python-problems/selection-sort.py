from random import shuffle

def selectionSort(nums):
    length = len(nums)
    for currIdx in range(length):
        smallestNum = nums[currIdx]
        smallestIdx = currIdx

        for scanJdx in range(currIdx + 1,length):

            if nums[scanJdx] < smallestNum:
                smallestNum = nums[scanJdx]
                smallestIdx = scanJdx

        nums[currIdx], nums[smallestIdx] = nums[smallestIdx], nums[currIdx]
        print("Nums: ", nums)
    return nums


nums = list(range(1,10))

print("Nums: ", nums)
shuffle(nums)
print("Nums: ", nums)

print(selectionSort(nums))
