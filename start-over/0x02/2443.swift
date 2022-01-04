// https://www.acmicpc.net/problem/2443
let n: Int = Int(readLine()!)!
(1...n).forEach {
    print("\(String(repeating: " ", count: $0 - 1))\(String(repeating: "*", count: 2 * n - $0 - ($0 - 1)))")
}