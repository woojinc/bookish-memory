def add_two_numbers(l1, l2)
    
    head = ListNode.new( 0 )

    carry_over = 0
    
    current_head = head

    loop do
        
        l1_val = l1.val || 0
        l2_val = l2.val || 0
        
        current_head.val    = (l1_val + l2_val + carry_over) % 10 
        carry_over          = (l1_val + l2_val + carry_over) / 10 
        
        l1 = l1.next != nil ? l1.next : ListNode.new( nil )
        l2 = l2.next != nil ? l2.next : ListNode.new( nil )
        
        if l1.val == nil && l2.val == nil
            
            if carry_over == 1
                tail = ListNode.new( carry_over )
        
                current_head.next = tail

                current_head = tail
            end
            
            break
        end
        
        tail = ListNode.new( 0 )
        
        current_head.next = tail
        
        current_head = tail
    end
    
    head
    
end