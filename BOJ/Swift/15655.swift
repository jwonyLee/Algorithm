let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var picked = [String]()
/*
 n: 전체 원소의 수
 toPick: 더 고를 수 있는 원소의 수
 */
func pick(n: Int, toPick: Int, start: Int) {
    // 기저 사례: 더 이상 고를 수 있는 수가 없으면 출력하고 종료
    if toPick == 0 {
        print(picked.joined(separator: " "))
        return
    }
    for i in start..<n {
        picked.append(String(nums[i]))
        pick(n: n, toPick: toPick - 1, start: i+1)
        picked.removeLast()
    }
}

pick(n: n, toPick: m, start: 0)