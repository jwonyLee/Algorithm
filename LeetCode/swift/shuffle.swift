class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var answer = [Int]()
        for i in 0..<n {
            answer.append(nums[i])
            answer.append(nums[i+n])
        }
        return answer
    }
}