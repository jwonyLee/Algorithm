class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let n = candidates.count
        
        var answer = [[Int]]()
        var picked = [Int]()
        
        func pick(csum: Int, index: Int) {
            // 종료 조건
            if csum < 0 {
                return
            }
            if csum == 0 {
                answer.append(picked)
                return
            }
            
            // 자신부터 하위 원소까지의 나열 재귀 호출
            for i in index..<n {
                picked.append(candidates[i])
                pick(csum: csum - candidates[i], index: i)
                picked.removeLast()
            }
        }
        
        pick(csum: target, index: 0)
        
        return answer
    }
}