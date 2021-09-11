// https://leetcode.com/problems/valid-parentheses/
class Solution {
    func isValid(_ s: String) -> Bool {
        let brakets: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]
        let open: Set<Character> = ["(", "{", "["]
        var stack: [Character] = []

        for char in s {
            if open.contains(char) {
                stack.append(char)
            } else {
                if let close = brakets[char],
                   stack.last == close {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}

