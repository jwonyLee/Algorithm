// https://leetcode.com/problems/reverse-integer/
import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let minRange: Int = Int(Int32.min)
        let maxRange: Int = Int(Int32.max)
        if x < 0 { // 음수
            var str = String(String(x).reversed())
            str.removeLast()
            let num = Int(str)! * -1
            return minRange...maxRange ~= num ? num : 0
        } else {
            let num = Int(String(String(x).reversed()))!
            return minRange...maxRange ~= num ? num : 0
        }
    }
}