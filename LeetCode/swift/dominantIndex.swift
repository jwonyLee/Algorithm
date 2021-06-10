class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        let maxIndex = nums.firstIndex(of: nums.max()!)!
        var isMax = true
        for i in 0..<nums.count {
            if i == maxIndex {
                continue
            }
            if nums[i] * 2 > nums[maxIndex] {
                isMax = false
            }
        }

        return isMax ? maxIndex : -1
    }
}