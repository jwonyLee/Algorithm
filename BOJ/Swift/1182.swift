let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let target = input[1]
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var count = 0

var picked = [Int]()
var visited = Array(repeating: false, count: n)
func pick(toPick: Int, start: Int) {
    if toPick == 0 {
        if picked.reduce(0, +) == target {
            count += 1
        }
        return
    }
    for i in start..<n {
        if visited[i] {
            continue
        }
        visited[i] = true
        picked.append(nums[i])
        pick(toPick: toPick - 1, start: i + 1)
        picked.removeLast()
        visited[i] = false
    }
}

for i in 1...n {
    pick(toPick: i, start: 0)
    visited = Array(repeating: false, count: n)
}

print(count)