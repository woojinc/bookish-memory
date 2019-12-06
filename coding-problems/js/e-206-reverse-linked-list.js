

function ListNode(val) {
    this.val = val;
    this.next = null;
}

var reverseList = function (head) {
    if (!head) {
        return head;
    }

    current_head = head;
    tail = new ListNode(current_head.val);

    while (current_head.next !== null) {
        current_head = current_head.next;
        new_head = new ListNode(current_head.val);
        new_head.next = tail;
        tail = new_head;
    }


    return (head.next !== null ? new_head : current_head);
};