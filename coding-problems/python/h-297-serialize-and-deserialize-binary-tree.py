class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class Codec:
    def serialize(self, root):
        if not root:
            return '#'
        return [root.val, self.serialize(root.left), self.serialize(root.right)]

    def deserialize(self, data):
        if data[0] == '#':
            return None

        node = TreeNode(data[0])
        node.left = self.deserialize(data[1])
        node.right = self.deserialize(data[2])

        return node


root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.right.left = TreeNode(4)
root.right.right = TreeNode(5)
data = [1, 2, 3, "#", "#", 4, 5]
codec = Codec()

codec.deserialize(codec.serialize(root))
