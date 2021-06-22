import Foundation

let nums = [1, 5, 10, 50]
let n = Int(readLine()!)!
var answer = 0
var check = Array(repeating: false, count: (50*20) + 1)
func pick(toPick: Int, sum: Int, index: Int) {
    if toPick == 0 {
        if check[sum] == false {
            check[sum] = true
            answer += 1
        }
        return
    }
    for i in index..<4 {
        pick(toPick: toPick - 1, sum: sum + nums[i], index: i)
    }
}

pick(toPick: n, sum: 0, index: 0)
print(answer)