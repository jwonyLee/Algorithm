let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
let n = Int(readLine()!)!
var board = [[Int]]()
for _ in 0..<n {
    let area = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(area)
}

var max = 0

for i in 0...100 {
    var graph = board

    // 잠기는 지역 체크
    for j in 0..<n {
        for k in 0..<n {
            if graph[j][k] <= i {
                graph[j][k] = 0
            }
        }
    }

    // 지역 개수 체크
    var count = 0
    for j in 0..<n {
        for k in 0..<n {
            if graph[j][k] != 0 {
                var visited = [[j, k]]
                var queue = [[j, k]]
                while !queue.isEmpty {
                    let v = queue.removeFirst()
                    for (x, y) in zip(dx, dy) {
                        let nx = v[0] + x
                        let ny = v[1] + y
                        if nx < 0 || nx >= n || ny < 0 || ny >= n || graph[nx][ny] == 0 {
                            continue
                        }
                        if graph[nx][ny] != 0 {
                            visited.append([nx, ny])
                            queue.append([nx, ny])
                            graph[nx][ny] = 0
                        }
                    }
                }
                count += 1
            }
        }
    }


    max = count > max ? count : max
}

print(max)