// https://leetcode.com/problems/reverse-words-in-a-string-iii/
class Solution {
    func reverseWords(_ s: String) -> String {
        var splitArray = s.split(separator: " ").map { String($0) }
        var answer: [String] = []
        for arr in splitArray {
            answer.append(String(arr.reversed()))
        }
        return answer.joined(separator: " ")
    }
}