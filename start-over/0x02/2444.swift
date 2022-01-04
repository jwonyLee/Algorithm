// https://www.acmicpc.net/problem/2444
let n: Int = Int(readLine()!)!
let m: Int = 2 * n - 1
(1...m).forEach {
    if $0 <= n {
        print("\(String(repeating: " ", count: n - $0))\(String(repeating: "*", count: 2 * $0 - 1))")
    } else {
        let k: Int = (2 * n) - $0
        print("\(String(repeating: " ", count: n - k))\(String(repeating: "*", count: 2 * k - 1))")
    }
}