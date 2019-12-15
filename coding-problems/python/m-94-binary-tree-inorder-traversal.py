# Definition for a binary tree node.

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class Solution:
    def __init__(self):
        self.inorder = []

    def inorderTraversal(self, root: TreeNode):

        if root:
            self.inorderTraversal(root.left)
            self.inorder += [root.val]
            self.inorderTraversal(root.right)

            return self.inorder

        else:
            return []
