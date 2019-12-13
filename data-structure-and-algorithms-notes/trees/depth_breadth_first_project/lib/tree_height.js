function treeHeight(root) {
    if (!root) return -1;
    // if (!root.left && !root.right) return 0;

    // let max_left_edge = 1, max_right_edge = 1;

    // if (root.left) max_left_edge += treeHeight(root.left);
    // if (root.right) max_right_edge += treeHeight(root.righ);

    // return (max_left_edge > max_right_edge ? max_left_edge: max_right_edge);

    return 1 + Math.max(treeHeight(root.left), treeHeight(root.right));
}


module.exports = {
    treeHeight
};