// https://leetcode.com/problems/pascals-triangle
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        // 배열 생성
        var answer: [[Int]] = []
        for i in 1...numRows {
            answer.append(Array(repeating: 0, count: i))
            answer[i-1][0] = 1
            answer[i-1][i-1] = 1
        }
        
        // 계산
        for i in 0..<answer.count - 1 {
            for j in 0..<answer[i].count - 1 {
                let k = j + 1
                if answer[i+1][k] == 0 {
                    answer[i+1][k] = answer[i][j] + answer[i][j+1]
                }
            }
        }
        
        return answer
    }
}