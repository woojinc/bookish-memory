# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root, lower_limit = -Float::INFINITY, upper_limit = Float::INFINITY)
  return true if root.nil?

  return false if root.val <= lower_limit || root.val >= upper_limit

  if !is_valid_bst(root.left, lower_limit, root.val)
    return false
  elsif !is_valid_bst(root.right, root.val, upper_limit)
    return false
  else
    return true
  end
end
