let n = readLine()!.split(separator: " ").map { Int(String($0))! }
let row = n[0]
let col = n[1]
var adj: [[Int]] = []
for _ in 0..<row {
    let line = Array(readLine()!).map { Int($0.asciiValue! - 65) }
    adj.append(line)
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var answer = 0

func dfs(x: Int, y: Int, total: Int, bitmask: Int) {
    answer = max(answer, total)
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if (nx < 0 || nx >= col || ny < 0 || ny >= row) {
            continue
        }
        let newBitmask = 1 << adj[ny][nx]
        if bitmask & newBitmask == 0 {
            dfs(x: nx, y: ny, total: total + 1, bitmask: bitmask | newBitmask)
        }
    }
}

dfs(x: 0, y: 0, total: 1, bitmask: 1 << adj[0][0])
print(answer)