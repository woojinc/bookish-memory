class GraphNode:
    def __init__(self, val):
        self.val = val
        self.neighbors = []

def depthFirstTraversal(node, visited=set()):
    if node.val in visited:
        return

    visited.add(node.val)
    print(node.val)

    for neighbor in node.neighbors:
        depthFirstTraversal(neighbor, visited)


a = GraphNode('a')
b = GraphNode('b')
c = GraphNode('c')
d = GraphNode('d')
e = GraphNode('e')
f = GraphNode('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

depthFirstTraversal(a)



