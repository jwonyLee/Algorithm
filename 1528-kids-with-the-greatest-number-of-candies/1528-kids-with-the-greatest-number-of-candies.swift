class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = Array(repeating: false, count: candies.count)
        let greatest = candies.max()!

        for index in 0..<candies.count {
            if candies[index] + extraCandies >= greatest {
                result[index] = true
            }
        }

        return result
    }
}