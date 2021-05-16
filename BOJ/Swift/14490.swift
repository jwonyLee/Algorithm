let x = readLine()!.split(separator: ":").map { Int(String($0))! }
let n = x[0]
let m = x[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}
let g = gcd(m, n)
print("\(n/g):\(m/g)")
