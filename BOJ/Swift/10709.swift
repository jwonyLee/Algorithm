let size = readLine()!.split(separator: " ").map { Int(String($0))! }
var board = [[String]]()
for _ in 0..<size[0] {
    let line = Array(readLine()!).map { String($0) }
    board.append(line)
}

var clouds = [[Int]]()

for i in 0..<size[0] {
    for j in 0..<size[1] {
        if board[i][j] == "." {
            board [i][j] = "-1"
        } else {
            board[i][j] = "0"
            clouds.append([i, j])
        }
    }
}

var time = 1
while !clouds.isEmpty {
    var temp = [[Int]]()
    while !clouds.isEmpty {
        var cloud = clouds.removeFirst()
        cloud[1] += 1
        if cloud[1] >= size[1] { // 구름이 바깥으로 벗어났을 때
            continue
        } else { // 구름이 바깥으로 벗어나지 않음
            if board[cloud[0]][cloud[1]] == "-1" { // 한번도 방문하지 않은 곳
                board[cloud[0]][cloud[1]] = "\(time)"
                temp.append(cloud)
            }
        }
    }

    clouds = temp
    time += 1
}

for b in board {
    print(b.joined(separator: " "))
}