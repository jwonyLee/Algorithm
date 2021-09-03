// https://leetcode.com/problems/two-sum
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let n = nums.count
        for i in 0..<n - 1 {
            for j in i+1..<n {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return [0, n]
    }
}