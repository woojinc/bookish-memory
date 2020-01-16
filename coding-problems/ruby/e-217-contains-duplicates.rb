require 'set'

def contains_duplicate(nums)
    nums_set = nums.to_set
    
    return true if nums_set.length != nums.length
    
    return false
        
end

puts contains_duplicate([1,2,3,4,1])