class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let letter: [[Character]] = [
            ["a", "b", "c"],
            ["d", "e", "f"],
            ["g", "h", "i"],
            ["j", "k", "l"],
            ["m", "n", "o"],
            ["p", "q", "r", "s"],
            ["t", "u", "v"],
            ["w", "x", "y", "z"]
        ]

        let digits = Array(digits).map { Int(String($0))! - 2 }
        let n = digits.count

        var answer = [String]()
        var picked = [Character]()
        var visited = Array(repeating: false, count: n)
        func pick(toPick: Int, start: Int) {
            if toPick == 0 {
                if !picked.isEmpty {
                    answer.append(String(picked))
                }
                return
            }
            for i in start..<n {
                for char in letter[digits[i]] {
                    if visited[i] {
                        continue
                    }
                    visited[i] = true
                    picked.append(char)
                    pick(toPick: toPick - 1, start: start + 1)
                    picked.removeLast()
                    visited[i] = false
                }
            }
        }
        pick(toPick: n, start: 0)
        return answer
    }
}