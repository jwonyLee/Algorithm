// https://leetcode.com/problems/length-of-last-word/
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let array = s.trimmingCharacters(in: .whitespaces).split(separator: " ").map { String($0) }
        if let last = array.last {
            return last.count
        }
        return 0
    }
}