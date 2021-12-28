// https://www.acmicpc.net/problem/2753

let year: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]

if year % 400 == 0 {
    print(1)
} else if year % 4 == 0 && year % 100 != 0 {
    print(1)
} else {
    print(0)
}