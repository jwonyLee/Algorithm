// https://www.acmicpc.net/problem/2562
var nums: [Int] = []
for _ in 0..<9 {
    let num: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]
    nums.append(num)
}

if let maxNum: Int = nums.max(),
   let findIndex: Int = nums.firstIndex(of: maxNum) {
    print("\(maxNum)\n\(findIndex + 1)")
}