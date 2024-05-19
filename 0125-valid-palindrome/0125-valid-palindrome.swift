class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let arr = s.map { Character(String($0)) }
        var str = ""

        for char in arr {
            if char.isLetter || char.isNumber {
                str += String(char).lowercased()
            }
        }

        return str == String(str.reversed())
    }
}