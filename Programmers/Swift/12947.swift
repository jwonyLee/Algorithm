func solution(_ x:Int) -> Bool {
    let h = String(x).map { Int(String($0))! }.reduce(0, +)
    return x % h == 0 ? true : false
}