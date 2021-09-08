// https://leetcode.com/problems/first-unique-character-in-a-string/
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict: [Character: Int] = [:]
        for char in s {
            dict[char, default: 0] += 1
        }
        
        let arr = Array(s)
        for i in 0..<arr.count {
            if let num = dict[arr[i]] {
                if num == 1 {
                    return i
                }
            }
        }
        return -1
    }
}