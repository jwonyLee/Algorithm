// https://leetcode.com/problems/merge-sorted-array
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for _ in 0..<n {
            nums1.removeLast()
        }
        nums1.append(contentsOf: nums2)
        nums1.sort()
    }
}