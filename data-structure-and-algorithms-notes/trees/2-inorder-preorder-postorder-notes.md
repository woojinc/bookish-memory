# Inorder Preorder Postorder Notes

## **Binary Tree Print Order Algorithms**
![Current Tree](inorder-preorder-postorder-notes-graph_a.png)

### **In-Order**
* print all nodes in the left subtree
* print root
* print all nodes in the right subtree

```javascript
function inOrderPrint(root) {
    if (root === null) return;

    inOrderPrint(root.left);
    console.log(root.val);
    inOrderPrint(root.right);
}

// d, b, e, a, c, f
```

## **Pre-Order**

* print root
* print all nodes in the left subtree
* print all nodes in the right subtree

```javascript
function preOrderPrint(root) {
    if (root === null) return;

    console.log(root.val);
    preOrderPrint(root.left);
    preOrderPrint(root.right);
}

// a, b, d, e, c, f
```

## **Post-Order**

* print all nodes in the left subtree
* print all nodes in the right subtree
* print root

```javascript
function postOrderPrint(root) {
    if (root === null) return;

    postOrderPrint(root.left);
    postOrderPrint(root.right);
    console.log(root.val);
}
```