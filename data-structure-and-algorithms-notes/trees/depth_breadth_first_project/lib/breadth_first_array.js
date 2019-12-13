function breadthFirstArray(root) {
    let returnArray = [];
    let queue = [root];

    while (queue.length) {
        let root = queue.shift();
        returnArray.push(root.val);
        if (root.left) queue.push(root.left);
        if (root.right) queue.push(root.right);
    }

    return returnArray;
}

module.exports = {
    breadthFirstArray
};