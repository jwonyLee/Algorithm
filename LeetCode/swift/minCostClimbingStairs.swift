// https://leetcode.com/problems/min-cost-climbing-stairs
class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let n = cost.count
        var dp: [Int] = Array(repeating: 0, count: n)
        dp[0] = cost[0]
        dp[1] = cost[1]
        for i in 2..<n {
            dp[i] = cost[i] + min(dp[i-1], dp[i-2])
        }
        return min(dp[n-1], dp[n-2])
    }
}