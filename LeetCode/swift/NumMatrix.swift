class NumMatrix {

    var numMatrix: [[Int]]
    
    init(_ matrix: [[Int]]) {
        numMatrix = matrix
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var sum = 0
        for i in row1...row2 {
            for j in col1...col2 {
                sum += numMatrix[i][j]
            }
        }
        return sum
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */