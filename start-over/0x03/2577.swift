let a: Int = Int(readLine()!)!
let b: Int = Int(readLine()!)!
let c: Int = Int(readLine()!)!

let num: String = String(a * b * c)
var contain: [Int] = Array(repeating: 0, count: 10)
num.forEach {
    contain[Int(String($0))!] += 1
}
print(contain.map { String($0) }.joined(separator: "\n"))