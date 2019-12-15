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

    def inorderTraversalIterate(self, root: TreeNode):

        stack_inorder = [( root, "init" )]

        while stack_inorder:
            root, pos = stack_inorder.pop()

            if root and pos != "root":
                stack_inorder.append(( root.right, "right" ))
                stack_inorder.append(( root, "root" ))
                stack_inorder.append(( root.right, "left" ))
            elif root and pos == "root":
                self.inorder.append( root.val )


        return self.inorder
