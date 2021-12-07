import Foundation

func solution(_ numbers:[Int]) -> Int {
    var visited = Array(repeating: false, count: 10)
    numbers.forEach {
        visited[$0] = true
    }
    var answer = 0
    visited.enumerated().forEach {
        if !visited[$0.0] {
            answer += $0.0
        }
    }
    
    return answer
}