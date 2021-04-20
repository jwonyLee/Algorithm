let n = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = readLine()!.split(separator: " ").map { Int(String($0))! }
let b = readLine()!.split(separator: " ").map { Int(String($0))! }
let ans = Set(a).subtracting(Set(b)).sorted()
print(ans.count)
print(ans.map { String($0) }.joined(separator: " "))