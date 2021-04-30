let size = readLine()!.split(separator: " ").map { Int(String($0))! }
let col = size[0]
let row = size[1]
let direction = [(1, 0), (0, 1), (-1, 0), (0, -1)]
var board = [[Int]]()
for _ in 0..<col {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(line)
}

// 녹이기
func melting() {
    var melt = Array(repeating: Array(repeating: 0, count: row), count: col)
    for i in 0..<col {
        for j in 0..<row {
            if board[i][j] != 0 {
                for k in 0..<4 {
                    let x = i + direction[k].0
                    let y = j + direction[k].1
                    if board[x][y] == 0 {
                        melt[i][j] += 1
                    }
                }
            }
        }
    }
    for i in 0..<col {
        for j in 0..<row {
            board[i][j] = board[i][j] - melt[i][j] < 0 ? 0 : board[i][j] - melt[i][j]
        }
    }
}

// 덩어리 찾기
func bfs() -> Int {
    var area = board
    var count = 0

    for i in 0..<col {
        for j in 0..<row {
            if area[i][j] != 0 {
                var queue = [(i, j)]
                area[i][j] = 0
                while !queue.isEmpty {
                    let v = queue.removeLast()
                    for k in 0..<4 {
                        let x = v.0 + direction[k].0
                        let y = v.1 + direction[k].1

                        if !(0..<col ~= x) || !(0..<row ~= y) || area[x][y] == 0 {
                            continue
                        }
                        queue.append((x, y))
                        area[x][y] = 0
                    }
                }
                count += 1
            }
        }
    }
    return count
}

var time = 0
var count = 0
while true {
    count = bfs()
    if count >= 2 {
        break
    } else if count == 0 {
        break
    }

    melting()

    time += 1
}
print(count == 0 ? 0 : time)