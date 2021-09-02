import Foundation

func solution(_ word:String) -> Int {
    let alphabet: [String] = ["A", "E", "I", "O", "U"]
    
    var store: [String] = []
    var picked: [String] = []
    func pick(toPick: Int) {
        if toPick == 0 {
            store.append(picked.joined(separator: ""))
            return
        }
        for i in 0..<alphabet.count {
            picked.append(alphabet[i])
            pick(toPick: toPick - 1)
            picked.removeLast()
        }
    }
    
    for i in 1...5 {
        pick(toPick: i)    
    }
    store.sort()
    
    return store.firstIndex(of: word)! + 1
}