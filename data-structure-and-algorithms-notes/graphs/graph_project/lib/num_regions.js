function numRegions(graph) {
    let visited = new Set();
    let regionsCount = 0;
    
    for (node in graph) {
         if (depthFirstRecRegions(node, graph, visited)) regionsCount++;
    }
    return regionsCount;
}

function depthFirstRecRegions(node, graph, visited) {
    if (visited.has(node)) return false;
    visited.add(node);

    graph[node].forEach( neighbor => depthFirstRecRegions(neighbor, graph, visited) );
    return true;
}

// function numRegions(graph) {

//     let regions = new Set();
    
//     for (node in graph) {
//         region = _depthFirstRecRegions(node, graph);
//         sortedRegion = Array.from(region).sort().join();
//         regions.add(sortedRegion);
//     }
//     return regions.size;
// }

// function _depthFirstRecRegions(node, graph, visited = new Set()) {
//     if (visited.has(node)) return;
//     visited.add(node);

//     graph[node].forEach(neighbor => {
//         _depthFirstRecRegions(neighbor, graph, visited)
//     })
//     return visited;
// }

module.exports = {
    numRegions
};