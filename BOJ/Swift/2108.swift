import Foundation
let n = Int(readLine()!)!
var nums = [Int]()
var dict = [Int: Int]()
for _ in 0..<n {
    let num = Int(readLine()!)!
    nums.append(num)
    dict[num, default: 0] += 1
}

// 산술평균
let d = Double(nums.reduce(0, +)) / Double(n)
print(Int(round(d)))

// 중앙값
nums.sort()
print(nums[Int(n/2)])

// 최빈값
let maxValue = dict.max(by: { $0.value < $1.value })!.value
var mode = dict.filter { $0.value == maxValue }.keys.sorted()
if mode.count > 1 {
    print(mode[1])
} else {
    print(mode[0])
}

// 범위
print(nums[n-1] - nums[0])