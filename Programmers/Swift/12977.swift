import Foundation

func isPrime(_ n: Int) -> Bool {
    guard n >= 2 else { return false }
    guard n != 2 else { return true }
    guard n % 2 != 0 else { return false }
    return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let n = nums.count

    func combination(of total: [Int], selectedCount: Int, current idx: Int, seletcted: [Int]) {
        if selectedCount == 0 {
            let sum = seletcted.reduce(0, +)
            if isPrime(sum) {
                answer += 1
            }
        } else if idx == total.count {
            return
        } else {
            let new = seletcted + [total[idx]]
            combination(of: total, selectedCount: selectedCount-1, current: idx+1, seletcted: new)
            combination(of: total, selectedCount: selectedCount, current: idx+1, seletcted: seletcted)
        }
    }

    combination(of: nums, selectedCount: 3, current: 0, seletcted: [])
    return answer
}