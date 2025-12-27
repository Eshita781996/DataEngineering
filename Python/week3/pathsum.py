class Solution:
    def hasPathSum(self, root, targetSum):
        if not root:
            return False

        # If leaf node
        if not root.left and not root.right:
            return root.val == targetSum

        remaining = targetSum - root.val

        return (
            self.hasPathSum(root.left, remaining) or
            self.hasPathSum(root.right, remaining)
        )
#       5
#      / \
#     4   8
#    /   / \
#   11  13  4
#  /  \      \
# 7    2      1
# TreeNode definition
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Build tree
root = TreeNode(5)
root.left = TreeNode(4)
root.left.left = TreeNode(11)
root.left.left.left = TreeNode(7)
root.left.left.right = TreeNode(2)
root.right = TreeNode(8)
root.right.left = TreeNode(13)
root.right.right = TreeNode(4)
root.right.right.right = TreeNode(1)

solution = Solution()
print(solution.hasPathSum(root, 22))
