// https://www.acmicpc.net/problem/2480

let dices: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dict: [Int: Int] = [:]
for dice in dices {
    dict[dice, default: 0] += 1
}

// 같은 눈이 3개가 나오면 10,000 + (같은 눈) * 1,000
if isSameNumber(to: 3) {
    print(10_000 + (dices.reduce(0, +) / 3) * 1_000)
} else if isSameNumber(to: 2), let dice: Int = findSameNumber(to: 2) {
    // 같은 눈이 2개가 나오면 1,000 + (같은 눈) * 100
    print(1_000 + (dice * 100))
} else if let maxDice: Int = dices.max() {
    // 모든 다른 눈이 나오는 경우 (그 중 가장 큰 눈) * 100
    print(maxDice * 100)
}

func isSameNumber(to target: Int) -> Bool {
    guard let _ = dict.first(where: { $0.value == target }) else {
        return false
    }

    return true
}

func findSameNumber(to target: Int) -> Int? {
    guard let key = dict.first(where: { $0.value == target })?.key else {
        return nil
    }
    return key
}