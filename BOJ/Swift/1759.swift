let x = readLine()!.split(separator: " ").map { Int(String($0))! }
let l = x[0]
let c = x[1]
let alpha = readLine()!.split(separator: " ").map { String($0) }

var picked = [String]()
var results = [String]()
var visited = Array(repeating: false, count: c)
func pick(toPick: Int) {
    if toPick == 0 {
        results.append(picked.joined())
        return
    }

    for i in 0..<c {
        if visited[i] {
            continue
        }
        if let last = picked.last {
            if Character(last).asciiValue! > Character(alpha[i]).asciiValue! {
                continue
            }
        }
        visited[i] = true
        picked.append(alpha[i])
        pick(toPick: toPick - 1)
        picked.removeLast()
        visited[i] = false
    }
}

pick(toPick: l)
results.sort()
let vowels = Set(["a", "e", "i", "o", "u"])
for r in results {
    var count = 0
    var countC = 0
    for c in r {
        if vowels.contains(String(c)) {
            count += 1
        } else {
            countC += 1
        }
    }
    if count >= 1 && countC >= 2 {
        print(r)
    }
}