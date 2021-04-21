let x = Int(readLine()!)!
var results = [Int]()

func binary(_ n: Int) {
    // 기저 사례1: n이 0이면 끝낸다.
    if n == 0 {
        results.append(0)
        return
    }
    // 기저 사례2: n이 1이면 끝낸다.
    if n == 1 {
        results.append(1)
        return
    }

    // 2로 나눈 수의 나머지를 results에 저장하고, 2로 나눈 수를 재귀 호출한다.
    results.append(n%2)
    binary(n/2)
}

binary(x)
print(results.reversed().map { String($0) }.joined())