var nums = [Int]()
for _ in 0..<9 {
    let num = Int(readLine()!)!
    nums.append(num)
}
var answer = nums
func find() {
    for i in 0..<8 {
        for j in i..<9 {
            let find = nums.reduce(0, +) - nums[i] - nums[j]
            if find == 100 {
                if let f = answer.firstIndex(of: nums[i]) {
                    answer.remove(at: f)
                }
                if let f = answer.firstIndex(of: nums[j]) {
                    answer.remove(at: f)
                }
                return
            }
        }
    }
}
find()
for a in answer {
    print(a)
}