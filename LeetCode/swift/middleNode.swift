// https://leetcode.com/problems/middle-of-the-linked-list/
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    var count: Int = 0
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        traverse(head)

        var middle: ListNode? = head
        
        if count % 2 == 0 {
            for _ in 0..<count/2 {
                middle = middle?.next
            }
            return middle
        } 
        
        for _ in 0..<(count/2)+1 {
            middle = middle?.next
        }
        return middle
    }
    
    func traverse(_ head: ListNode?) {
        if let next = head?.next {
            count += 1
            traverse(next)
        }
        return
    }
}