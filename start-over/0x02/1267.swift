// https://www.acmicpc.net/problem/1267
let n: Int = Int(readLine()!)!
let calls: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var resultY: Int = 0
var resultM: Int = 0
calls.forEach {
    let lessY: Int = $0 + 1 - (($0 / 30) * 30)
    let y: Int = (lessY <= 0 ? 0 : 1) + ($0 / 30)
    let priceY: Int = y * 10
    resultY += priceY
    let lessM: Int = $0 + 1 - (($0 / 60) * 60)
    let m: Int = (lessM <= 0 ? 0 : 1) + ($0 / 60)
    let priceM: Int = m * 15
    resultM += priceM
}

if resultY == resultM {
    print("Y M \(resultY)")
} else if resultY < resultM {
    print("Y \(resultY)")
} else {
    print("M \(resultM)")
}