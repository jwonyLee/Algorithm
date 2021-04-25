import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var person = [Int: Int]()
    var overlap = Set<String>()
    overlap.insert(words[0])
    person[0, default: 0] += 1
    for i in 1..<words.count {
        if !overlap.contains(words[i]) && words[i-1].last! == words[i].first! {
            overlap.insert(words[i])
            person[i%n, default: 0] += 1
        } else {
            person[i%n, default: 0] += 1
            return [i%n + 1, person[i%n]!]
        }
    }
    return [0, 0]
}