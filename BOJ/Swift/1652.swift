var n = Int(readLine()!)!
var board = [[Bool]]()
for _ in 0..<n {
    let line = Array(readLine()!).map { $0 == "." ? true : false }
    board.append(line)
}

var column = 0
var row = 0
for i in 0..<n {
    let splitRow = board[i].split(separator: false).map { $0.count }
    let splitCol = board.map({ $0[i] }).split(separator: false).map { $0.count }

    for r in splitRow {
        if r >= 2 {
            row += 1
        }
    }
    for c in splitCol {
        if c >= 2 {
            column += 1
        }
    }
}
print(row, column)