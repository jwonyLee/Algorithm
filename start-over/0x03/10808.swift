let s: String = readLine()!
var contain: [Int] = Array(repeating: 0, count: 26)
s.forEach {
    contain[Int($0.asciiValue! - 97)] += 1
}
print(contain.map { String($0) }.joined(separator: " "))