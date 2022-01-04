// https://www.acmicpc.net/problem/10804
var nums: [Int] = Array(1...20)
for _ in 0..<10 {
    let x: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a: Int = x[0]
    let b: Int = x[1]
    nums[a-1..<b].reverse()
}
print(nums.map { String($0) }.joined(separator: " "))