class Solution {
    func reverse(_ x: Int) -> Int {
        var reversed = String(String(x).reversed()).map { String($0) }
        if 0 > x {
            reversed.insert(reversed.popLast()!, at: 0)
        }
        print(reversed)
        return Int(reversed.joined()) ?? 0
    }
}