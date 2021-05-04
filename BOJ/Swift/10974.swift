let n = Int(readLine()!)!
var picked = [Int]()
var visited = Array(repeating: false, count: n)

func pick(toPick: Int) {
    if toPick == 0 {
        print(picked.map { String($0) }.joined(separator: " "))
        return
    }

    for i in 0..<n {
        if visited[i] {
             continue
        }
        picked.append(i+1)
        visited[i] = true
        pick(toPick: toPick - 1)
        visited[i] = false
        picked.removeLast()
    }
}

pick(toPick: n)