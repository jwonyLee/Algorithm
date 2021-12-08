let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = 0

for i in 0..<input[0] {
    var temp = 0
    for j in i..<input[0] {
        temp += a[j]
        if temp == input[1] {
            answer += 1
            break
        }
    }
}

print(answer)