# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
    
    return nil if head.nil?
    
    mid = find_mid_and_separate_nodes(head)
    
    root_node = TreeNode.new(mid.val)
    return root_node if mid == head
    
    right_head = mid.next
    
    # recursive to left and right
    root_node.left = sorted_list_to_bst(head)
    root_node.right = sorted_list_to_bst(right_head)
    
    root_node
end

# helper method to find mid node and separate mid node from the previous node
def find_mid_and_separate_nodes(head)
    
    slow = head
    fast = head
    prev_slow = nil
    
    while !fast.nil? && !fast.next.nil?
        prev_slow = slow
        slow = slow.next
        fast = fast.next.next
    end
    
    prev_slow.next = nil if !prev_slow.nil?
    
    return slow
end