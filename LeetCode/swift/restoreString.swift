class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var arr = Array(s.enumerated())

        arr.sort(by: { first, second in
            indices[first.offset] < indices[second.offset]
        })
        let str = arr.map { $0.element }

        return String(str)
    }
}