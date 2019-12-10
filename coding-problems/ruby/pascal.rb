def solution(num, index = 0, last_row = [1])
    return last_row if num == index

    new_row = [1]
    (0...last_row.length - 1).each do |idx|
        new_row.push(last_row[idx] + last_row[idx + 1])
    end
    new_row.push(1)

    index += 1

    solution(num, index, new_row)

end

p solution(0)