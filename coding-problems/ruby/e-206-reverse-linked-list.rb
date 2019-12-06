# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    def print()
        pointer = self
        output_arr = [pointer.val]
        until pointer.next == nil
            pointer = pointer.next
            output_arr << pointer.val
        end
        return output_arr
    end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    
    return [] if !head 
    
    current_head = head
    tail = ListNode.new(current_head.val)
    
    
    until current_head.next == nil
        current_head = current_head.next
        new_head = ListNode.new(current_head.val)
        new_head.next = tail
        tail = new_head
    end
    
    !new_head ? (return tail) : (return new_head)
    
end

head = ListNode.new(1)
node1 = ListNode.new(2)
node2 = ListNode.new(3)
node3 = ListNode.new(4)
node4 = ListNode.new(5)

head.next = node1
node1.next = node2
node2.next = node3
node3.next = node4

p head.print

p reverse_list(head).print