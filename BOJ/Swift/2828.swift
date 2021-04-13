let n = readLine()!.split(separator: " ").map { Int(String($0))! }
var start = 0
var end = n[1] - 1

let j = Int(readLine()!)!
var queue = [Int]()
for _ in 0..<j {
    let position = Int(readLine()!)! - 1
    queue.append(position)
}

var count = 0
for q in queue {
    if start <= q && q <= end {
        continue
    } else if start > q { // 바구니보다 왼쪽에 있는 경우
        while start != q {
            start -= 1
            end -= 1
            count += 1
        }
    } else if end < q { // 바구니보다 오른쪽에 있는 경우
        while end != q {
            start += 1
            end += 1
            count += 1
        }
    }
}

print(count)