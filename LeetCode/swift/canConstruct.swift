// https://leetcode.com/problems/ransom-note
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]
        for char in magazine {
            dict[char, default: 0] += 1
        }
        for char in ransomNote {
            dict[char, default: 0] -= 1
        }
        return 0 >= dict.values.filter({ $0 < 0 }).count
    }
}