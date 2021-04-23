let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var picked = [Int]()
/*
 n: 전체 원소의 수
 picked: 지금까지 고른 원소들의 번호
 toPick: 더 고를 원소의 수
 일 때, 앞으로 toPick개의 원소를 고르는 모든 방법을 출력한다
 */
func pick(n: Int, picked:inout [Int], toPick: Int) {
    // 기저 사례: 더 고를 원소가 없을 때 고른 원소들을 출력한다.
    if toPick == 0 {
        for p in picked {
            print(p, terminator: " ")
        }
        print()
        return
    }
    // 원소 하나를 고른다.
    for next in 1...n {
        picked.append(next)
        pick(n: n, picked: &picked, toPick: toPick - 1)
        picked.removeLast()
    }
}

pick(n: n, picked: &picked, toPick: m)