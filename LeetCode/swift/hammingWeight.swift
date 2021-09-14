// https://leetcode.com/problems/number-of-1-bits/
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let str = String(n, radix: 2)
        return str.filter { $0 == "1" }.count
    }
}