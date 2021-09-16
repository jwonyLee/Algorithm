// https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
class Solution {
    func minPartitions(_ n: String) -> Int {
        if let x = Array(n).map { Int(String($0))! }.max() {
            return x
        }
        return -1
    }
}