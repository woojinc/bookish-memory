
input = File.foreach('/Users/woojin/Desktop/bookish-memory/coding-problems/advent_of_code/day-6-input.txt').map { |line| line.strip }

# Part 1 Test Data => 42
# input = [ "COM)B", "B)C", "C)D", "D)E", "E)F", "B)G", "G)H", "D)I", "E)J", "J)K", "K)L" ]

# Part 2 Test Data => 4
# input = [ "COM)B", "B)C", "C)D", "D)E", "E)F", "B)G", "G)H", "D)I", "E)J", "J)K", "K)L", "K)YOU", "I)SAN" ]

class TreeNode
    attr_accessor :val, :children

    def initialize(val)
        @val = val
        @children = []
    end

end

class OrbitMap 
    attr_accessor :com, :input

    def initialize(input)
        pair = OrbitMap.find_com(input)
        parent, child = pair.split(")")
        child_node = TreeNode.new(child)

        @input = input
        @input.delete(pair)
        @com = TreeNode.new(parent)
        @com.children.push(child_node)
    end

    def self.find_com(input)
        input.each { |pair| return pair if pair.include?("COM") }
    end

    def find_all_children()
        find_children(self.com.children)
    end

    def find_children(children_node)
        children_node.each do |child_node|
            pairs = @input.find_all { |pair| pair.include?(child_node.val+")") }

            pairs.each do |pair|
                child = pair.split(")")[1]
                new_child = TreeNode.new(child)
                child_node.children.push(new_child)
                @input.delete(pair)
            end

            find_children(child_node.children)
        end
    end

    def find_total_num_orbits(children, current_height)
        total_orbits = 0

        children.each { |child| total_orbits += current_height + find_total_num_orbits(child.children, current_height + 1) }

        return total_orbits
    end

    def create_ancestry(children, parents_hash = {}, parent_array = ["COM"])
        children.each do |child|
            parents_hash[child.val]= parent_array
            create_ancestry(child.children, parents_hash, parent_array + [child.val])
        end
        return parents_hash
    end

    def self.count_parents(parents, sibilings_parents)
        parents.reverse.each_with_index do |parent, idx|
            return idx if sibilings_parents.include?(parent)
        end
    end
end

orbit_map = OrbitMap.new(input)
orbit_map.find_all_children()

puts "Total Number of Orbits: #{orbit_map.find_total_num_orbits(orbit_map.com.children, 1)}"

parents_hash = orbit_map.create_ancestry(orbit_map.com.children)

puts "Total Number of Orbits: #{parents_hash.values.sum(&:length)}"

san_parents = parents_hash["SAN"]
you_parents = parents_hash["YOU"]

san_parents_count = OrbitMap.count_parents(san_parents, you_parents)
you_parents_count = OrbitMap.count_parents(you_parents, san_parents)

puts "Total Number of orbit transfer: #{san_parents_count + you_parents_count}"

