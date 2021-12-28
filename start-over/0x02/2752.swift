// https://www.acmicpc.net/problem/2752

let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
print(input.sorted().map { String($0) }.joined(separator: " "))