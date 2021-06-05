class Solution {
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        let first = Int(firstWord.map { String($0.asciiValue! - 97) }.joined())!
        let second = Int(secondWord.map { String($0.asciiValue! - 97) }.joined())!
        let target = Int(targetWord.map { String($0.asciiValue! - 97) }.joined())!
        return first + second == target
    }
}