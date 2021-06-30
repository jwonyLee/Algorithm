let x = readLine()!.split(separator: " ").map { Int(String($0))! }
let k = x[0]
let n = x[1]
let m = x[2]
let answer = k*n - m
print(answer < 0 ? 0 : answer)