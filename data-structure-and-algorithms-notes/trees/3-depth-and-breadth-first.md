# Depth and Breadth First Traversal

![Current Tree](inorder-preorder-postorder-notes-graph_a.png)

## **Depth First Traversal**
* A, B, D, E, C, F
* **Stack**
* **LIFO** (Last In First Out)
* A key idea: only consider a node "visited" once it is popped
    * Do not consider a node "visited" when it is pushed

```javascript
function depthFirst(root) {
    // initialize the stack with the root node
    let stack = [ root ];

    // continue running the algorithm while there are still nodes on the stack
    while (stack.length) {

        // pop the top node from the stack
        let node = stack.pop();

        // we consider a node visited once we pop it,
        // so we should print the node's value now
        console.log(node.val);

        // add the node's left and right children, if they exist
        if (node.right) stack.push(node.right);
        if (node.left) stack.push(node.left);

        // IMPORTANT: do not print out the children yet; they must wait their turn to be popped first
    }
}

// Recursive version
function depthFirstRecur(root) {
    if (!root) return;
    console.log(root.val);
    depthFirstRecur(root.left);
    depthFirstRecur(root.right);
}
```

## **Breadth-First**
* A, B, C, D, E, F
* **Queue**
* **FIFO** (First In First Out)

```javascript
function breadthFirst(root) {
    // initialize the queue with the root node
    let queue = [ root ];

    // continue running the algorithm while there are still nodes on the queue
    while (queue.length) {
        // remove the front node from the queue
        let node = queue.shift();

        // the node we just removed is now "visited", so print it
        console.log(node.val);

        // add the left and right children to the back of the queue, if they exist
        if (node.left) queue.push(node.left);
        if (node.right) queue.push(node.right);

        // IMPORTANT: do not print out the children yet; they must wait their turn to exit the front of the queue first
    }
}
```