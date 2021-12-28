// https://www.acmicpc.net/problem/10871

// 입력: N, 정수 X
let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let x: Int = input[1]
let a: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let result: [Int] = a.filter { $0 < x }
print(result.map { String($0) }.joined(separator: " "))