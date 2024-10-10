class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var lhs: Set<Int> = []
        var rhs: Set<Int> = []

        for num in nums1 {
            if !nums2.contains(num) {
                lhs.insert(num)
            }
        }

        for num in nums2 {
            if !nums1.contains(num) {
                rhs.insert(num)
            }
        }

        return [Array(lhs), Array(rhs)]
    }
}