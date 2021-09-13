// https://leetcode.com/problems/combinations/
class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var store: [[Int]] = []
        var picked: [Int] = []
        var visited: [Bool] = Array(repeating: false, count: n + 1)
        func combinations() {
            if picked.count == k {
                store.append(picked)
                return
            }
            for i in 1...n {
                if visited[i] {
                    continue
                }
                if let last = picked.last, last < i {
                    continue
                }
                visited[i] = true
                picked.append(i)
                combinations()
                picked.removeLast()
                visited[i] = false
            }
        }
        
        combinations()
        
        return store
    }
}