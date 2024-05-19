class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var result: [[Int]] = []
        for i in stride(from: matrix.count - 1, to: -1, by: -1) {
            var arr: [Int] = []
            for j in 0..<matrix.count {
                arr.append(matrix[j][i])
            }
            arr.reverse()
            result.append(arr)
        }
        result.reverse()
        matrix = result
        // for i in stride(from: matrix.count - 1, to: -1, by: -1) {
        //     for j in stride(from: 0, to: matrix.count, by: 1) {
        //         print(matrix[i][j], terminator: " ")
        //     }
        //     print()
        // }
    }
}