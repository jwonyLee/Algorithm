// https://leetcode.com/problems/counting-bits/
class Solution {
    func countBits(_ n: Int) -> [Int] {
        var answer: [Int] = Array(repeating: 0, count: n + 1)
        for i in 0...n {
            answer[i] = String(i, radix: 2).filter { $0 == "1" }.count
        }
        return answer
    }
}