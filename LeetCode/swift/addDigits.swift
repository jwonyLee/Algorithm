// https://leetcode.com/problems/add-digits/
class Solution {
    func addDigits(_ num: Int) -> Int {
        var num = num
        while String(num).count != 1 {
            let sum = String(num).reduce(0) { Int(String($0))! + Int(String($1))! }
            num = sum
        }
        return num
    }
}