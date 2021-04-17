let t = Int(readLine()!)!
for _ in 0..<t {
    let n = readLine()!.split(separator: " ").map { Int(String($0))! }
    var sum = 0
    for i in n[0]...n[1] {
        sum += String(i).filter { $0 == "0" }.count
    }
    print(sum)
}