// https://www.acmicpc.net/problem/2442
let n: Int = Int(readLine()!)!
(1...n).forEach {
    print("\(String(repeating: " ", count: n - $0))\(String(repeating: "*", count: 2 * $0 - 1))")
}