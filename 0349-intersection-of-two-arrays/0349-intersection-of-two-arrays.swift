class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var lhs = Set(nums1).intersection(nums2)
        let rhs = Set(nums2).intersection(nums1)

        var result = lhs.union(rhs)

        return Array(result)
    }
}