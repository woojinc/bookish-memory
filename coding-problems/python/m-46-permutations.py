def permute(nums):
    if len(nums) <= 1:
        return [nums]
    # if len(nums) == 2:
    #     return [[nums[0], nums[1]], [nums[1], nums[0]]]
    output = []
    for idx in range(len(nums)):
        permutations = permute(nums[:idx] + nums[idx+1:])
        
        for permuation in permutations:
            output.append([nums[idx]] + permuation)

    return output


print(permute([1,2,3,4]))
