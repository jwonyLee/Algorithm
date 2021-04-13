let n = readLine()!.split(separator: " ").map { Int(String($0))! }
var message = readLine()!.split(separator: " ").map { Int(String($0))! }
var dict = [Int: Int]()

for m in message {
    dict[m, default: 0] += 1
}

var answer = [Int]()
for (key, value) in dict.sorted(by: {
    if $0.value == $1.value {
        return message.firstIndex(of: $0.key)! < message.firstIndex(of: $1.key)!
    }
    return $0.value > $1.value
}) {
    for _ in 0..<value {
        answer.append(key)
    }

}

print(answer.map({String($0)}).joined(separator: " "))