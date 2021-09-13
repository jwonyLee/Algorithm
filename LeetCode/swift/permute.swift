// https://leetcode.com/problems/permutations/
class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        var store: [[Int]] = []
        var picked: [Int] = []
        var visited: [Bool] = Array(repeating: false, count: n)
        
        func pick(toPick: Int) {
            if toPick == n {
                store.append(picked)
                return
            }
            for i in 0..<n {
                if visited[i] { continue }
                visited[i] = true
                picked.append(nums[i])
                pick(toPick: toPick + 1)
                picked.removeLast()
                visited[i] = false
            }
        }
        pick(toPick: 0)
        
        return store
    }
}