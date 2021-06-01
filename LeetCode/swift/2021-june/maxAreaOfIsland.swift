class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var board = grid
        let n = board.count
        let m = board[0].count
        let direction = [(0, 1), (1, 0), (-1, 0), (0, -1)]
        var count = 0
        for i in 0..<n {
            for j in 0..<m {
                if board[i][j] == 1 {
                    var visited = [[i, j]]
                    var queue = [(i, j)]
                    while !queue.isEmpty {
                        let v = queue.removeFirst()
                        for k in 0..<4 {
                            let x = v.0 + direction[k].0
                            let y = v.1 + direction[k].1
                            if 0..<n ~= x && 0..<m ~= y && board[x][y] == 1 {
                                if !visited.contains([x, y]) {
                                    queue.append((x, y))
                                    visited.append([x, y])
                                    board[x][y] = 0
                                }
                            }
                        }
                    }
                    count = count < visited.count ? visited.count : count
                }
            }
        }

        return count
    }
}