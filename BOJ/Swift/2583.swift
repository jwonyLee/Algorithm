let n = readLine()!.split(separator: " ").map { Int(String($0))! }
var board = Array(repeating: Array(repeating: 0, count: n[1]), count: n[0])

for _ in 0..<n[2] {
    let area = readLine()!.split(separator: " ").map { Int(String($0))! }
    let startX = n[0] - area[1] - 1
    let startY = area[0]
    let endX = n[0] - area[3]
    let endY = area[2] - 1

    for i in endX...startX {
        for j in startY...endY {
            board[i][j] = 1
        }
    }
}

var area = [Int]()
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var count = 0
for i in 0..<n[0] {
    for j in 0..<n[1] {
        if board[i][j] == 0 {
            var visited = Set<[Int]>()
            visited.insert([i, j])
            var queue = [[i, j]]
            while !queue.isEmpty {
                let v = queue.removeFirst()
                for (x, y) in zip(dx, dy) {
                    let nx = x + v[0]
                    let ny = y + v[1]
                    if nx < 0 || nx >= n[0] || ny < 0 || ny >= n[1] || board[nx][ny] == 1 {
                        continue
                    }
                    if board[nx][ny] == 0 {
                        visited.insert([nx, ny])
                        queue.append([nx, ny])
                        board[nx][ny] = 1
                    }
                }
            }
            area.append(visited.count)
            count += 1
        }
    }
}

print(count)
print(area.sorted().map({ String($0) }).joined(separator: " "))