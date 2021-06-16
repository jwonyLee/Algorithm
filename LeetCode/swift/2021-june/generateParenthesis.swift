class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        let bracket = ["(", ")"]
        var result = [[String]]()
        var picked = [String]()
        func pick(toPick: Int) {
            if toPick == 0 {
                result.append(picked)
                return
            }

            for i in 0..<2 {
                picked.append(bracket[i])
                pick(toPick: toPick - 1)
                picked.removeLast()
            }
        }

        func isWell(_ arr: [String]) -> Bool {
            var count = 0
            for char in arr {
                if char == "(" {
                    count += 1
                } else {
                    count -= 1
                    if count < 0 {
                        return false
                    }
                }
            }

            return count == 0 ? true : false
        }

        pick(toPick: n * 2)

        var answer = Set<String>()

        for r in result {
            if isWell(r) {
                answer.insert(r.joined())
            }
        }

        return answer.sorted()
    }
}