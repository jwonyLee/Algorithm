class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var result = 0
        var temp = 0

        for g in gain {
            temp += g
            result = max(result, temp)
        }

        return result
    }
}