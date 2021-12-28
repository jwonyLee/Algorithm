// https://www.acmicpc.net/problem/2309

var dwarfs: [Int] = []
for _ in 0..<9 {
    let dwarf: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]
    dwarfs.append(dwarf)
}

dwarfs.sort()
let sum: Int = dwarfs.reduce(0, +)
findDwarfs()

func findDwarfs() {
    for i in 0..<9 {
        for j in 0..<9 where i != j {
            if sum - dwarfs[i] - dwarfs[j] == 100 {
                dwarfs.remove(at: i)
                dwarfs.remove(at: j - 1)
                print(dwarfs.map { String($0) }.joined(separator: "\n"))
                return
            }
        }
    }
}