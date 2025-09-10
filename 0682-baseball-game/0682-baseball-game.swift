class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var result: [Int] = []

        for operation in operations {
            if let number = Int(operation) {
                result.append(number)
            } else if operation == "+" {
                result.append(result[result.count - 1] + result[result.count - 2])
            } else if operation == "D" {
                result.append(result[result.count - 1] * 2)
            } else if operation == "C" {
                result.removeLast()
            }
        }

        return result.reduce(0, +)
    }
}