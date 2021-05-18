import Foundation
let x = readLine()!.split(separator: " ").map { Int(String($0))! }
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = x[0]
let m = x[1]

var result = Set<String>()
var picked = [Int]()
var visited = Array(repeating: false, count: n)
func pick(toPick: Int) {
    if toPick == 0 {
        result.insert(picked.map { String($0) }.joined(separator: " "))
        return
    }
    for i in 0..<n {
        if visited[i] {
            continue
        }
        visited[i] = true
        picked.append(nums[i])
        pick(toPick: toPick - 1)
        picked.removeLast()
        visited[i] = false
    }
}

pick(toPick: m)
for num in result.sorted(by: { $0.localizedStandardCompare($1) == .orderedAscending}) {
    print(num)
}