def generate_parenthesis(n, current_string="", open = 0, close = 0)
    
    return_arr = []
    
    return [current_string] if open == n && close == n
    
    return_arr.concat(generate_parenthesis(n, current_string+"(", open + 1, close)) unless open == n
    return_arr.concat(generate_parenthesis(n, current_string+")", open, close + 1)) unless close == open
    
    return return_arr
    
end

