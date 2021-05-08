import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    let n = numbers.count
    var picked = [Bool]()
    let op = [true, false]
    func pick(toPick: Int) {
        if toPick == 0 {
            var sum = 0
            for i in 0..<n {
                if picked[i] {
                    sum += numbers[i]
                } else {
                    sum -= numbers[i]
                }
            }
            if sum == target {
                answer += 1
            }
            return
        }
        for i in 0..<2 {
            picked.append(op[i])
            pick(toPick: toPick - 1)
            picked.removeLast()
        }
    }

    pick(toPick: n)
    return answer
}