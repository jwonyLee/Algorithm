// https://leetcode.com/problems/lucky-numbers-in-a-matrix/
class Solution {
    func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
        var answer: [Int] = []
        for i in 0..<matrix.count {
            let row = matrix[i]
            for j in 0..<matrix[0].count {
                let column = matrix.map { $0[j] }
                if matrix[i][j] == row.min()! && matrix[i][j] == column.max()! {
                    answer.append(matrix[i][j])
                }
            }
        }
        return answer
    }
}