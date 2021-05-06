while let input = readLine() {
    if input == "0" {
        break
    }

    let nums = Array(input.split(separator: " ").map { Int(String($0))! })
    let n = nums.count

    var picked = [String]()
    var visited = Array(repeating: false, count: n)
    func pick(toPick: Int) {
        if toPick == 0 {
            print(picked.joined(separator: " "))
            return
        }

        for i in 1..<n {
            if visited[i] {
                continue
            }
            if !picked.isEmpty && Int(picked.last!)! > nums[i] {
                continue
            }
            visited[i] = true
            picked.append("\(nums[i])")
            pick(toPick: toPick - 1)
            picked.removeLast()
            visited[i] = false
        }
    }

    pick(toPick: 6)
    print()
}
