# **Binary tree Notes**

## **Binary Trees**

### **Graph**

![Example of graphs](binary-tree-notes-graphs.png)
* Example of graphs
    * **Graph** is a collection of **nodes** and any **edges** between those nodes
    * The emptry graph and a single node are also graphs
    * **Linked list** and **tress** are both subclass of graphs

### **(Rooted) Tree**

* **Tree** is a **Graph** that does not contain any cycles
* In CS, we only consider rooted tree as tree

* Basic Tree Terminology
    * **tree** - graph with no cycles
    * **binary tree** - tree where nodes have at most 2 nodes
    * **root** - the ultimate parent, the single node of a tree that can access every other node through edges; by definition the root will not have a parent
    * **internal node** - a node that has children
    * **leaf** - a node that does not have any children
    * **path** - a series of nodes that can be traveled through edges - for example A, B, E is a path through the above tree

### **Binary Tree**

* A Tree with at most **2** children node.
    * an empty graph of 0 nodes and 0 edges is a binary tree
    * a graph of 1 node and 0 edges is a binary tree
    * a linked list is a binary tree

### **Representing a Binary Tree with Node Instances**

#### Python
```python
class BinaryTreeNode:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None
```

#### JavaScript
```javascript
class BinaryTreeNode {
    constructor(val) {
        this.val = val;
        this.left = null;
        this.right = null;
    }
}

let a = new BinaryTreeNode('a');
let b = new BinaryTreeNode('b');
let c = new BinaryTreeNode('c');
let d = new BinaryTreeNode('d');
let e = new BinaryTreeNode('e');
let f = new BinaryTreeNode('f');

a.left = b;
a.right = c;
b.left = d;
b.right = e;
c.right = f;
```

#### Ruby
```ruby
class BinaryTreeNode
    def initialize(val)
        @val = val
        @left = nil
        @right = nil
    end
end
```

#### Java
```java
class BinaryTreeNode {

    BinaryTreeNode left, right;
    int val;

    public BinaryTreeNode() {
        val = 0
        left = null;
        right = null;
    }

    public BinaryTreeNode(int n) {
        val = n
        left = null;
        right = null;
    }
}
```

