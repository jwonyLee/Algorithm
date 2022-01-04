// https://www.acmicpc.net/problem/2439
let n: Int = Int(readLine()!)!
(1...n).forEach {
    print("\(String(repeating: " ", count: n - $0))\(String(repeating: "*", count: $0))")
}