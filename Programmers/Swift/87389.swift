import Foundation

func solution(_ n:Int) -> Int {
    for i in 1..<n where n % i == 1 {
        return i
    }
    return 0
}