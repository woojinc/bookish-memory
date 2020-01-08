function breadthFirstSearch(startingNode, targetVal) {
    
    let visited = new Set();
    let nodes = [startingNode];

    while(nodes.length) {
        let node = nodes.shift();
        if (visited.has(node)) continue;
        visited.add(node);

        if (node.val === targetVal) return node;
        nodes = nodes.concat(node.neighbors);
    }

    return null;
}

module.exports = {
    breadthFirstSearch
};