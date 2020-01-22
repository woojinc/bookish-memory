# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    
    return nil if nums.length == 0
    
    mid_idx = nums.length / 2
    root = nums[mid_idx]
    left = nums[0...mid_idx]
    right = nums[(mid_idx + 1)..-1]
    
    node = TreeNode.new(root)
    
    node.left = sorted_array_to_bst(left)
    node.right = sorted_array_to_bst(right)
    
    return node
end

