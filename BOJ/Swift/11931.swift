let n = Int(readLine()!)!
var nums = [Int]()
for _ in 0..<n {
    let num = Int(readLine()!)!
    nums.append(num)
}

nums.sort(by: { $0 > $1 })
print(nums.map { String($0) }.joined(separator: "\n"))