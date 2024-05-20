
class RecentCounter {
    private var requests: [Int]

    init() {
        self.requests = []
    }
    
    func ping(_ t: Int) -> Int {
        requests.append(t)
        let minimum = t - 3000
        let maximum = t
        return requests.filter({ minimum <= $0 && $0 <= maximum }).count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */