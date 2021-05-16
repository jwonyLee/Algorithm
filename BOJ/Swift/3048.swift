let n = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = Array(readLine()!.reversed())
let b = Array(readLine()!)
let t = Int(readLine()!)!
var c = a.map { return ($0, false) } + b.map { return ($0, true) }
let m = n.reduce(0, +)

for _ in 0..<t {
    var i = 1
    while i < m {
        if c[i].1 != c[i-1].1 && c[i - 1].1 == false { // 방향이 다른 경우
            c.swapAt(i, i-1)
            i += 1
        }
        i += 1
    }
}

print(c.map { String($0.0) }.joined())
