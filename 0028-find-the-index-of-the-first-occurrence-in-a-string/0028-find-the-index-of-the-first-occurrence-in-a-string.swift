class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if !haystack.contains(needle) { return -1 }

        let haystack = haystack.map { String($0) }
        for index in 0..<haystack.count - needle.count {
            if needle == haystack[index..<index + needle.count].joined() {
                return index
            }
        }
        return 0
    }
}