def trap(height)
    # set max
    # next point check if it is bigger than max
    # if same or less, max_heigth - current_height 
    # if it is bigger than max_height, update max
    
    trapped_rain, max_height = 0, 0
    
    height.each do |wall_height|
        if wall_height >= max_height
            max_height = wall_height
        elsif wall_height < max_height
            trapped_rain += max_height - wall_heigth
        else
    end
end

input = [0,1,0,2,1,0,1,3,2,1,2,1]
output = 6

p trap(input)