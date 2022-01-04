// https://www.acmicpc.net/problem/2445
let n: Int = Int(readLine()!)!
let m: Int = 2 * n - 1
(1...m).forEach {
    if $0 <= n {
        let star: String = String(repeating: "*", count: $0)
        print("\(star)\(String(repeating: " ", count: (2 * n) - (2 * $0)))\(star)")
    } else {
        let k: Int = (2 * n) - $0
        let star: String = String(repeating: "*", count: k)
        print("\(star)\(String(repeating: " ", count: (2 * n) - (2 * k)))\(star)")
    }
}