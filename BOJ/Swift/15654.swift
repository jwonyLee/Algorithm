let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var picked = [String]()
var visited = [Int: Bool]()
for num in nums {
    visited[num] = false
}
/*
 n: 전체 원소의 수
 picked: 지금까지 고른 원소들의 번호
 toPick: 더 고를 원소의 수
 일 때, 앞으로 toPick개의 원소를 고르는 모든 방법을 출력한다
 */
func pick(n: Int, toPick: Int) {
    // 기저 사례: 더 고를 원소가 없을 때 고른 원소들을 출력한다.
    if toPick == 0 {
        print(picked.joined(separator: " "))
        return
    }
    // 원소 하나를 고른다.
    for next in 0..<n {
        // 방문한 원소는 건너뛴다.
        if visited[nums[next]]! {
            continue
        }
        visited[nums[next]] = true
        picked.append(String(nums[next]))
        pick(n: n, toPick: toPick - 1)
        picked.removeLast()
        visited[nums[next]] = false
    }
}

pick(n: n, toPick: m)