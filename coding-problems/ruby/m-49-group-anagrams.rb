def group_anagrams(strs)
    # output_arr = Hash.new{ |h, k| h[k]=[]}
    output_arr = {}
    
    strs.each do |str|
        sorted_str = str.chars.sort.join
        if output_arr[sorted_str]
            output_arr[sorted_str].push(str)
        else
            output_arr[sorted_str] = [str]
        end
    end
    
    output_arr.values
end