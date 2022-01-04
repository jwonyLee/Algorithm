// https://www.acmicpc.net/problem/2446
let n: Int = Int(readLine()!)!
let m: Int = 2 * n - 1
(1...m).forEach {
    if $0 <= n {
        print("\(String(repeating: " ", count: $0 - 1))\(String(repeating: "*", count: 2 * n - $0 - ($0 - 1)))")
    } else {
        let k: Int = 2 * n - $0
        print("\(String(repeating: " ", count: k - 1))\(String(repeating: "*", count: 2 * n - k - (k - 1)))")
    }
}