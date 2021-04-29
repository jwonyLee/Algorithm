let size = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = size[0]
let m = size[1]
var board = [[Int]]()
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(line)
}

var copyBoard = board
var results = [[[Int]]]()
var picked = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)

func makeWall(toPick: Int) {
    if toPick == 0 {
        results.append(picked) // 조합 저장
        return
    }
    for i in 0..<n {
        for j in 0..<m {
            if board[i][j] != 0 {
                continue
            }
            if visited[i][j] {
                continue
            }

            visited[i][j] = true
            picked.append([i, j])
            makeWall(toPick: toPick - 1)
            picked.removeLast()
            visited[i][j] = false
        }
    }
}

var virusLocation = [(Int, Int)]()
for i in 0..<n {
    for j in 0..<m {
        if board[i][j] == 2 {
            virusLocation.append((i, j))
        }
    }
}

func safeArea() -> Int {
    var count = 0
    for i in 0..<n {
        for j in 0..<m {
            if copyBoard[i][j] == 0 {
                count += 1
            }
        }
    }
    return count
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
func bfs(_ i: Int, _ j: Int) {
    // 바이러스가 퍼져나가는 작업
    var queue = [(i, j)]

    while !queue.isEmpty {
        let v = queue.removeFirst()
        for k in 0..<4 {
            let nx = v.0 + dx[k]
            let ny = v.1 + dy[k]

            if !(0..<n ~= nx) || !(0..<m ~= ny) || copyBoard[nx][ny] == 1 {
                continue
            }
            if copyBoard[nx][ny] == 0 {
                queue.append((nx, ny))
                copyBoard[nx][ny] = 2
            }
        }
    }
}

makeWall(toPick: 3)
var maxArea = 0
for result in results {
    copyBoard = board
    copyBoard[result[0][0]][result[0][1]] = 1
    copyBoard[result[1][0]][result[1][1]] = 1
    copyBoard[result[2][0]][result[2][1]] = 1

    for virus in virusLocation {
        bfs(virus.0, virus.1)
    }

    maxArea = max(maxArea, safeArea())
}

print(maxArea)