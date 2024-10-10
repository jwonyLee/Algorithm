class Solution {
    func scoreOfString(_ s: String) -> Int {
        var arr = s.map { Character(String($0)) }
        var result = 0
        
        for index in 0..<arr.count-1 {
            let temp = abs(Int(arr[index].asciiValue!) - Int(arr[index+1].asciiValue!))
            result += temp
        }

        return result
    }
}