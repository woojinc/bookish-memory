def title_to_number(s)
    alphas = [""] + ("A".."Z").to_a
    
    length = s.length
    
    column_position = 0
    
    s.each_char.with_index do |char, idx|
        digit = length - (idx + 1)
        letter_number = alphas.index(char)
        
        column_position += letter_number * (26 ** digit)
    end
    
    column_position
end

puts title_to_number("AA")