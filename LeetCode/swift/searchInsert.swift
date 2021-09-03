// https://leetcode.com/problems/search-insert-position/
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) {
            return index
        }
        
        let n = nums.count
        for i in 0..<n {
            if nums[i] > target {
                return i
            }
        }
        return n
    }
}