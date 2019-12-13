// View the full problem and run the test cases at:
//  https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

const { TreeNode } = require('./tree_node.js.js');


function buildTree(preorder, inorder) {

    if (preorder.length === 0 && inorder.length === 0) return null;

    const rootVal = preorder[0], root = new TreeNode(rootVal), rootIndex = inorder.indexOf(rootVal);

    root.left = buildTree(preorder.slice(1, rootIndex + 1), inorder.slice(0, rootIndex));
    root.right = buildTree(preorder.slice(rootIndex + 1), inorder.slice(rootIndex + 1));

    return root;
}
