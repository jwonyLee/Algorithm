// https://leetcode.com/problems/binary-tree-preorder-traversal/
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var answer: [Int] = []
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        traversal(root)
        return answer
    }
    
    func traversal(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        answer.append(root.val)
        traversal(root.left)
        traversal(root.right)
    }
}