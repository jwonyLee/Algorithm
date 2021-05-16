extension String {
    subscript(offset: Int) -> String {
        get {
            let index = String.Index(utf16Offset: offset, in: self)
            return String(self[index])
        }
    }
}

let str = readLine()!
let pattern = readLine()!
let n = str.count
let m = pattern.count
var cur = 0 // str cursor
var answer = 0
while cur < n {
    var i = 0 // pattern cursor
    if str[cur] == pattern[i] {
        var isFind = true
        while i < m {
            if cur + i >= n {
                isFind = false
                break
            }
            if str[cur + i] != pattern[i] {
                isFind = false
                break
            }
            i += 1
        }
        if isFind {
            cur += i
            answer += 1
        } else {
            cur += 1
        }
    } else {
        cur += 1
    }
}
print(answer)