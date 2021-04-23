let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var picked = [String]()
var result = ""
/*
 n: 전체 원소의 수
 toPick: 고를 수 있는 원소의 수
 */
func pick(n: Int, toPick: Int) {
    // 기저 사례: 고를 수 있는 원소의 수가 없으면 출력하고 종료
    if toPick == 0 {
        result += picked.joined(separator: " ") + "\n"
        return
    }

    // 수를 고른다. 같은 수를 여러 번 골라도 된다.
    for i in 0..<n {
        picked.append(String(nums[i]))
        pick(n: n, toPick: toPick - 1)
        picked.removeLast()
    }
}

pick(n: n, toPick: m)

print(result, terminator: "")