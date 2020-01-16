def rotate(matrix)
    
    # [0,0] => [0,2]
    # [0,1] => [1,2]
    # [0,2] => [2,2]
    
    # [1,0] => [0,1]
    # [1,1] => [1,1]
    # [1,2] => [2,1]    
    
    # [2,0] => [0,0]
    # [2,1] => [1,0]
    # [2,2] => [2,0]
    
    #[[0,0],[0,1],[0,2]]
    #[[1,0],[1,1],[1,2]]
    #[[2,0],[2,1],[2,2]]
        
    #[[2,0],[1,0],[0,0]]
    #[[2,1],[1,1],[0,1]]
    #[[2,2],[1,2],[0,2]]
    
    
    (0...matrix.length).each do |idx|
        (idx...matrix.length).each do |jdx|
            matrix[idx][jdx], matrix[jdx][idx] = matrix[jdx][idx], matrix[idx][jdx]
        end
    end
    
    (0...matrix.length).each do |idx|
        (0...matrix.length / 2).each do |jdx|
            new_jdx = -(jdx + 1)
            matrix[idx][jdx], matrix[idx][new_jdx] = matrix[idx][new_jdx], matrix[idx][jdx]
        end
    end
end

matrix = [[1,2,3], [4,5,6], [7,8,9]]

matrix.each do |row|
    print row
    puts
end

rotate(matrix)
puts "Roate matrix 90 degree clockwise"

matrix.each do |row|
    print row
    puts
end