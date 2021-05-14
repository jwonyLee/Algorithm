import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var graph = [Int: [Int]]()
    for i in 0..<n {
        graph[i] = []
    }
    for i in 0..<n {
        for j in 0..<n {
            if i == j {
                continue
            }
            if computers[i][j] == 1 {
                graph[i, default: []].append(j)
            }
        }
    }

    func bfs(_ start: Int) -> Set<Int> {
        var visited: Set<Int> = []
        var queue = [start]
        while !queue.isEmpty {
            let v = queue.removeFirst()
            for w in graph[v]! {
                if !visited.contains(w) {
                    visited.insert(w)
                    queue.append(w)
                }
            }
        }
        return visited
    }

    var visited: Set<Int> = []
    var answer = 0
    for i in 0..<n {
        if !visited.contains(i) {
            let v = bfs(i)
            for j in v {
                visited.insert(j)
            }
            answer += 1
        }
    }
    return answer
}