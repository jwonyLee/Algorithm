let n = Int(readLine()!)!
var board = [[Int]]()
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(line)
}

var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in 0..<n {
    for j in 0..<n {
        if board[i][j] == 1 {
            answer[i][j] = 1

            var visited = [j]
            var queue = [j]
            while !queue.isEmpty {
                let v = queue.removeFirst()
                for w in 0..<n {
                    if !visited.contains(w) && board[v][w] == 1 {
                        answer[i][w] = 1
                        visited.append(w)
                        queue.append(w)
                    }
                }
            }
        }

    }
}

for a in answer {
    print(a.map { String($0) }.joined(separator: " "))
}