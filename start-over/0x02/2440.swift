// https://www.acmicpc.net/problem/2440
let n: Int = Int(readLine()!)!
(0..<n).forEach {
    print(String(repeating: "*", count: n - $0))
}