// https://www.acmicpc.net/problem/9498

let score: Int = readLine()!.split(separator: " ").map { Int(String($0))! }[0]

switch score {
    case 90...100:
        print("A")
    case 80...89:
        print("B")
    case 70...79:
        print("C")
    case 60...69:
        print("D")
    default:
        print("F")
}