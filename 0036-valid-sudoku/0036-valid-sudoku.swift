class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
    var validSub: [[Character: Int]] = Array(
        repeating: Dictionary(
        uniqueKeysWithValues: (1...9).map { (Character(String($0)), 0) }
    ), 
        count: 9
    )
    for col in 0..<9 {
        var validCol: [Character: Int] = Dictionary(
            uniqueKeysWithValues: (1...9).map { (Character(String($0)), 0) }
        )
        var validRow: [Character: Int] = Dictionary(
            uniqueKeysWithValues: (1...9).map { (Character(String($0)), 0) }
        )
        for row in 0..<9 {
            if board[row][col] != "." {
                validRow[board[row][col], default: 0] += 1
            }
            if board[col][row] != "." {
                validCol[board[col][row], default: 0] += 1
                
                // sub
                let grid = (col / 3) + (row / 3) * 3
                validSub[grid][board[col][row], default: 0] += 1
            }
        }
        if 1 < validCol.values.max() ?? 0 {
            return false
        }
        if 1 < validRow.values.max() ?? 0 {
            return false
        }
    }
    for sub in validSub {
        if 1 < sub.values.max() ?? 0 {
            return false
        }
    }

    return true
    }
}