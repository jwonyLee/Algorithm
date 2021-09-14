// https://leetcode.com/problems/power-of-two/
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        let binary = String(n, radix: 2)
        return binary.filter({ $0 == "1" }).count == 1 && binary.first! == "1"
    }
}