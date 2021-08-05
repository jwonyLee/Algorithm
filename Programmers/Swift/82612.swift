import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var calculatePrice: Int = money
    for i in 1...count {
        calculatePrice -= price * i
    }
    return calculatePrice < 0 ? Int64(abs(calculatePrice)) : 0
}