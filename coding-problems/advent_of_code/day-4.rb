

def why_elves()
    min = 264360
    max = 746325

    current_numb = min
    count = 0

    until current_numb > max
        double_arr = []
        increasing = true
        double = false
        (1...6).each do |idx|
            if current_numb.to_s[idx-1] > current_numb.to_s[idx]
                increasing = false
                break
            end

            if current_numb.to_s[idx-1] == current_numb.to_s[idx]
                double_arr << current_numb.to_s[idx-1]
                double = true
            end
        end

        valid_double = double_arr.any? do |ele|
            double_arr.count(ele) == 1
        end

        if double == true && increasing == true && valid_double
            count += 1
            p count.to_s + " " + current_numb.to_s
        end

        current_numb += 1
    end

    return count
end

p why_elves();