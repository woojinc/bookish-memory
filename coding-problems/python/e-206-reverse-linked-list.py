# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution(object):
    def reverseList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if head is None:
            return head
        
        current_head = head
        tail = ListNode(current_head.val)
        new_head = tail
        
        while current_head.next != None:
            current_head = current_head.next
            new_head = ListNode(current_head.val)
            new_head.next = tail
            tail = new_head
            
        return new_head
        