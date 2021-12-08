let n: Int = Int(readLine()!)!

var infos: [[Int]] = []

for _ in 0..<n {
    let info = readLine()!.split(separator: " ").map { Int(String($0))! }
    infos.append(info)
}

var ratings: [Int] = Array(repeating: 1, count: n)

for i in 0..<n {
    for j in 0..<n where i != j {
        // 덩치가 더 작은 경우
        if infos[i][0] < infos[j][0] && infos[i][1] < infos[j][1] {
            ratings[i] += 1
        }
    }
}

print(ratings.map { String($0) }.joined(separator: " "))