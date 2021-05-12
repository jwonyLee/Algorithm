class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str = ""
        for char in s {
            if char.isNumber || char.isLetter {
                str += char.lowercased()
            }
        }
        return str == String(str.reversed())
    }
}