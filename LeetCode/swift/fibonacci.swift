// https://leetcode.com/problems/fibonacci-number/
class Solution {
    func fib(_ n: Int) -> Int {
        if n < 2 { return n }
        
        var dp: [Int] = Array(repeating: 0, count: n + 1)
        dp[1] = 1

        for i in 2...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        return dp[n]
    }
}