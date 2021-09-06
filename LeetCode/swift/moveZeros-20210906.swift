// https://leetcode.com/problems/move-zeroes/
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex: [Int] = []
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroIndex.append(i)
            }
        }
        
        zeroIndex.reverse()
        for zero in zeroIndex {
            nums.append(nums.remove(at: zero))
        }
    }
}