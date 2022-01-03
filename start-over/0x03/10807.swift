let n: Int = Int(readLine()!)!
let nums: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let x: Int = Int(readLine()!)!
var count: Int = 0
nums.forEach {
    if $0 == x {
        count += 1
    }
}
print(count)