import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    // 1. n * n 비어있는 2차원 배열 생성
    var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    // i행 0열부터 i행 i열까지 모든 빈 칸의 숫자 i로 채우기
    for i in 0..<n {
        for j in 0...i where board[i][j] == 0 {
            board[i][j] = i + 1
            board[j][i] = i + 1
        }
    }
    
    // n행까지 모두 이어붙인 새로운 1차원 배열 생성
    var newArray: [Int] = []
    for arr in board {
        newArray.append(contentsOf: arr)
    }

    // left ~ right 까지만 남기고 리턴
    let left = Int(left)
    let right = Int(right)
    
    return Array(newArray[left...right])
}