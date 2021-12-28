// https://www.acmicpc.net/problem/2587

var nums: [Int] = []
for _ in 0..<5 {
    let num: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]
    nums.append(num)
}

nums.sort()
print(nums.reduce(0, +) / 5)
print(nums[2])