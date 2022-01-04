// https://www.acmicpc.net/problem/10093
let x: [Int64] = readLine()!.split(separator: " ").map { Int64(String($0))! }
var a: Int64 = x[0]
var b: Int64 = x[1]

if a == b {
    print(0)
} else if a < b {
    let count: Int = Int(b - a - 1)
    print(count)
    let nums: [Int64] = Array(a+1..<b)
    print(nums.map { String($0) }.joined(separator: " "))
} else {
    let count: Int = Int(a - b - 1)
    print(count)
    let nums: [Int64] = Array(b+1..<a)
    print(nums.map { String($0) }.joined(separator: " "))
}