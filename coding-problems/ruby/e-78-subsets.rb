require 'set'

def subsets(nums)
    
    subsets = [[]]
    
    nums.each do |num| 
        subsets += subsets.map { |set| set + [num] } 
    end
    
    subsets
end

def subsets_without_map(nums)
    sub_sets = Set.new([[]])
    
    nums.each do |num|
        new_sets = Set.new([])
        
        sub_sets.each do |sub_set|
            new_sets.add([num] + sub_set)
        end
        
        sub_sets += new_sets
    end
    
    return sub_sets.to_a
end

def subsets_recursion(nums, sub_sets=Set.new([]))
    
    return if sub_sets.include?(nums)
    
    sub_sets.add(nums)
    
    nums.each_with_index do |_num, idx|
        subsets_recursion(nums[0...idx]+nums[(idx+1)..-1], sub_sets)
    end
    
    return sub_sets.to_a
end

nums = [1,2,3,4]

print subsets(nums)
puts
print subsets_without_map(nums)
puts
print subsets_recursion(nums)
puts