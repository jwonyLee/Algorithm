// https://www.acmicpc.net/problem/2576

var oddNumbers: [Int] = []

for _ in 0..<7 {
    let num: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]
    if num % 2 == 1 {
        oddNumbers.append(num)
    }
}

if oddNumbers.isEmpty {
    print(-1)
} else if let minNum: Int = oddNumbers.min() {
    print("\(oddNumbers.reduce(0, +))\n\(minNum)")
}