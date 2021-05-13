class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        var answer = [[Int]]()
        var picked = [Int]()
        var visited = Array(repeating: false, count: n)
        func pick(toPick: Int) {
            if toPick == 0 {
                answer.append(picked)
                return
            }
            for i in 0..<n {
                if visited[i] {
                    continue
                }
                if let last = picked.last, last < nums[i] {
                    continue
                }
                visited[i] = true
                picked.append(nums[i])
                pick(toPick: toPick - 1)
                picked.removeLast()
                visited[i] = false
            }
        }
        for i in 0...n {
            pick(toPick: i)
        }
        return answer
    }
}