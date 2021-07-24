let t = Int(readLine()!)!
for _ in 0..<t {
    let x = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = x[0]
    let m = x[1]
    for _ in 0..<m {
        _ = readLine()
    }
    print(n-1)
}