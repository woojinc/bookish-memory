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


def depthFirstTraversalIter(node):
    visited = set()
    stack = [node]

    while stack:
        node = stack.pop()
        if node.val in visited:
            continue
        visited.add(node.val)

        print(node.val)
        # add neighbors in reverse order, to keep it left to right depth first
        stack += node.neighbors[::-1]

def breadthFirstTraversal(node):
    visited = set()
    queue = [node]

    while queue:
        node = queue.pop(0)
        
        if node.val in visited:
            continue
        visited.add(node.val)

        queue += node.neighbors

        print(node.val)

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
depthFirstTraversalIter(a)
breadthFirstTraversal(a)



