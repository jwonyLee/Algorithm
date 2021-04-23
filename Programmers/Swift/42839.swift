import Foundation

func isPrime(_ n: Int) -> Bool {
    if n < 2 { // 2보다 작으면 소수가 아님
        return false
    }
    
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ numbers:String) -> Int {
    var picked = [String]()
    var results = Set<Int>()
    var nums = Array(numbers).map { String($0) }
    let m = nums.count
    var visited = Array(repeating: false, count: m+1)
    /*
    n: 전체 원소의 수
    toPick: 고를 수 있는 원소의 수
    */
    func pick(n: Int, toPick: Int) {
        // 기저 사례: 고를 수 있는 원소가 없으면 종료
        if toPick == 0 {
            results.insert(Int(picked.joined())!)
            return
        }
        // 원소 고르기
        for i in 0..<n {
            if visited[i] {
                continue
            }
            visited[i] = true
            picked.append(String(nums[i]))
            pick(n: n, toPick: toPick - 1)
            picked.removeLast()
            visited[i] = false
        }
    }
    
    for i in 1...m {
        pick(n: m, toPick: i)
    }
    var answer = 0
    for re in results {
        if isPrime(re) {
            answer += 1
        }
    }
    return answer
}