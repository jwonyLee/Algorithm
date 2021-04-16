let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int(String($0))! }
var b = readLine()!.split(separator: " ").map { Int(String($0))! }
a.sort(by: >)
b.sort(by: <)
var sum = 0
for (x, y) in zip(a, b) {
    sum += x * y
}

print(sum)