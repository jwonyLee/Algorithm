let max = 2_000_000
var primes: [Bool] = Array(repeating: true, count: max + 1)
func eratos() {
    let m = Int(Double(max).squareRoot())
    primes[1] = false
    for i in 2...m {
        if primes[i] {
            var j = i + i
            while j < max {
                primes[j] = false
                j += i
            }
        }
    }
}
eratos()
let n = Int(readLine()!)!
var i = n
while true {
    if primes[i] && String(i) == String(String(i).reversed()) {
        print(i)
        break
    }
    i += 1
}