function maxValue(node, visited=new Set()) {
    if (visited.has(node.val)) return -Infinity;
    visited.add(node.val);

    let maxNeighbors = node.neighbors.map( neighbor => maxValue(neighbor, visited) );
    return Math.max(node.val, ...maxNeighbors);

    // _depthFirstRec(node, visited);

    // let maxVal = node.val;

    // visited.forEach(val => {
    //     if (val > maxVal) maxVal = val;
    // });

    // return maxVal;

}

// function _depthFirstRec(node, visited = new Set()) {
//     if (visited.has(node.val)) return;
//     visited.add(node.val);
//     node.neighbors.forEach(node => {
//         _depthFirstRec(node, visited);
//     });
// }

module.exports = {
    maxValue
};