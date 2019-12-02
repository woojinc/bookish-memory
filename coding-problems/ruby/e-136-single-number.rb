require 'set'

def single_number(nums)
    
    # set_nums = Set[nums.shift]
    set_nums = Set[]

    nums.each do |ele|
        set_nums === ele ? set_nums.delete(ele) : set_nums.add(ele)
    end
    
    return set_nums.to_a()[0]
end

p single_number([2,1,2])
p single_number([4,1,2,1,2])

def single_number_math(nums)
    nums.to_set().to_a().sum * 2 - nums.sum
end

p single_number_math([2,1,2])
p single_number_math([4,1,2,1,2])