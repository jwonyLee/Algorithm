import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var waits = truck_weights // 대기 트럭
    var queue = [[Int]]() // 다리를 건너는 트럭
    var finished = [[Int]]() // 다리를 지난 트럭
    var time = 0 // 경과 시간

    while finished.count != truck_weights.count { // 다리를 건너는 트럭과 대기 트럭이 없을 때까지

        // finished <--- queue
        if !queue.isEmpty && time - queue[0][1] == bridge_length {
            finished.append(queue.removeFirst())
        }

        // queue <--- waits
        if let first = waits.first {
            if queue.map({ $0[0] }).reduce(0, +) + first <= weight {
                queue.append([waits.removeFirst(), time])
            }
        }

        time += 1
    }
    return time
}