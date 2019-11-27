def solution(a)
  # write your code in Ruby 2.2
  
  positive_arr = a.select { |ele| ele > 0 }
  sorted_arr = positive_arr.sort()
  
  positive_smallest_integer = 1
  
  sorted_arr.uniq.each do |ele|
    if positive_smallest_integer == ele
      positive_smallest_integer += 1
    else
      return positive_smallest_integer
    end
  end
  
  positive_smallest_integer
end


p solution([1,3,6,4,1,2])