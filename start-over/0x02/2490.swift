// https://www.acmicpc.net/problem/2490

for _ in 0..<3 {
    let yut: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

    if yut.filter { $0 == 1 }.count == 4 { // 모
        print("E")
    } else if yut.filter { $0 == 0 }.count == 4 { // 윷
        print("D")
    } else if yut.filter { $0 == 0 }.count == 3 { // 걸
        print("C")
    } else if yut.filter { $0 == 0 }.count == 2 { // 개
        print("B")
    } else { // 도
        print("A")
    }
}
