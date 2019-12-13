function treeSum(root) {
    if (!root) return 0;
    
    // let totalSum = 0;
    // totalSum += root.val;
    // totalSum += treeSum(root.left);
    // totalSum += treeSum(root.right);

    return treeSum(root.left) + root.val + treeSum(root.right);
}


module.exports = {
    treeSum
};