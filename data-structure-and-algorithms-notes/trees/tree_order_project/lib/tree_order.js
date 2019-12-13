function inOrderArray(root) {
    if (root === null) return [];
    let tree_array = [];

    tree_array.push(...inOrderArray(root.left));
    tree_array.push(root.val);
    tree_array.push(...inOrderArray(root.right));
    return tree_array;
}

function postOrderArray(root) {
    if (root === null) return [];
    let tree_array = [];

    tree_array.push(...postOrderArray(root.left));
    tree_array.push(...postOrderArray(root.right));
    tree_array.push(root.val);

    return tree_array;
}


module.exports = {
    inOrderArray,
    postOrderArray
};