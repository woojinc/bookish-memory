class TreeNode {
    constructor(val) {
        this.val = val;
        this.left = null;
        this.right = null;
    }
}

function buildTreeSimpleUsesSlice(preorder, inorder) {

    if (preorder.length === 0 && inorder.length === 0) return null;

    const rootVal = preorder[0], root = new TreeNode(rootVal), rootIndex = inorder.indexOf(rootVal);

    root.left = buildTreeSimpleUsesSlice(preorder.slice(1, rootIndex + 1), inorder.slice(0, rootIndex));
    root.right = buildTreeSimpleUsesSlice(preorder.slice(rootIndex + 1), inorder.slice(rootIndex + 1));

    return root;
}

function buildTreeUsesFilter(preorder, inorder) {

    if (preorder.length === 0 && inorder.length === 0) return null;

    const rootVal = preorder[0], root = new TreeNode(rootVal), rootIndex = inorder.indexOf(rootVal);

    let leftInorder = inorder.slice(0, rootIndex);
    let rightInorder = inorder.slice(rootIndex + 1);

    let leftPreorder = preorder.filter((val) => leftInorder.includes(val));
    let rightPreorder = preorder.filter((val) => rightInorder.includes(val));

    let leftTree = buildTreeUsesFilter(leftPreorder, leftInorder);
    let rightTree = buildTreeUsesFilter(rightPreorder, rightInorder);

    root.left = leftTree;
    root.right = rightTree;

    return root;
}

preorder = [3, 9, 20, 15, 7];
inorder = [9, 3, 15, 20, 7];

console.log(buildTreeSimpleUsesSlice(preorder, inorder));
console.log(buildTreeUsesFilter(preorder, inorder));


