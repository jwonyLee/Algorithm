// https://www.acmicpc.net/problem/10869

let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let a: Int = input[0]
let b: Int = input[1]
print("\(a + b)\n\(a - b)\n\(a * b)\n\(a / b)\n\(a % b)")