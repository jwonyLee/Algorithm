let n = Int(readLine()!)!
var p = Array(repeating: 0, count: 1)
p += readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 0, count: n + 1)

for i in 1...n {
    for j in 1...i {
        dp[i] = max(dp[i], dp[i - j] + p[j])
    }
}

print(dp[n])