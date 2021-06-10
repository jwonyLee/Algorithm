class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits

        if digits[digits.count - 1] != 9 {
            digits[digits.count - 1] += 1
        } else {
            var cur = digits.count - 1
            while cur > 0 {
                if digits[cur] != 9 {
                    break
                }
                digits[cur] = 0
                cur -= 1
            }
            if cur == 0 && digits[cur] == 9 {
                digits.insert(1, at: 0)
                digits[1] = 0
            } else {
                digits[cur] += 1
            }
        }

        return digits
    }
}