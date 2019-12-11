
input = []

File.foreach('/Users/woojin/Desktop/bookish-memory/coding-problems/advent_of_code/day-6-input.txt') do |line|
    input.push(line.strip.split(")")[0])
    # input.push(line.strip)
end
# p input.sort
# count_hash = {}
# input.sort.each do |planet|
#     count_hash[planet] ? count_hash[planet] += 1 : count_hash[planet] = 1
# end

# count_hash.each do |key, val|
#     puts "#{key} #{val}" if val == 2 
# end

class OrbitMap 

    def initialize(val)
        @val = val
        @parent = null
        @children = []
    end


end