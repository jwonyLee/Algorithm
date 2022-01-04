// https://www.acmicpc.net/problem/2438
let n: Int = Int(readLine()!)!
(1...n).forEach {
    print(String(repeating: "*", count: $0))
}