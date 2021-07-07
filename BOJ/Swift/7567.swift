let arr = Array(readLine()!)
var height = 10
for i in 1..<arr.count {
    if arr[i-1] != arr[i] {
        height += 10
    } else {
        height += 5
    }
}
print(height)