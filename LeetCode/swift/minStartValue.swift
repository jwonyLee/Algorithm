// https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum/
class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var i = 1
        while true {
            var startValue = i
            var count = 0
            for num in nums {
                startValue += num
                if startValue < 1 {
                    count += 1
                }
            }
            if count == 0 {
                return i
            }
            
            i += 1
        }
        return 1
    }
}