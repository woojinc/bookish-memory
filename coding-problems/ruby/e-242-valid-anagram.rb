def is_anagram(s, t)
    
    return false if s.length() != t.length()
    
    hashS = countLetters(s)
    hashT = countLetters(t)
    
    hashS.each do |letter, count|
        return false if hashT[letter] != count
    end
    
    return true
end

def countLetters(str)
    hash = Hash.new{ |h, k| h[k] = 0 }
    
    str.each_char do |letter|
        hash[letter] += 1
    end    
    
    return hash
end

puts is_anagram("anagram", "nagaram")