import Foundation

var fileio = FileIO()
let n = fileio.readInt()
let m = fileio.readInt()
var nums = [Int]()
for _ in 0..<n {
    let num = fileio.readInt()
    nums.append(num)
}

var result = Set<String>()
var picked = [Int]()
var visited = Array(repeating: false, count: n)
func pick(toPick: Int) {
    if toPick == 0 {
        result.insert(picked.map { String($0) }.joined(separator: " "))
        return
    }
    for i in 0..<n {
        if let last = picked.last {
            if last > nums[i] {
                continue
            }
        }
        if visited[i] {
            continue
        }

        visited[i] = true
        picked.append(nums[i])
        pick(toPick: toPick - 1)
        picked.removeLast()
        visited[i] = false
    }
}

pick(toPick: m)
let sorted = result.sorted(by: { $0.localizedStandardCompare($1) == .orderedAscending})
for num in sorted {
    print(num)
}

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10 && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }

        return str
    }
}
