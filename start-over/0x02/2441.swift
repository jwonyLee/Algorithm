// https://www.acmicpc.net/problem/2441
let n: Int = Int(readLine()!)!
(0..<n).forEach {
    print("\(String(repeating: " ", count: $0))\(String(repeating: "*", count: n - $0))")
}