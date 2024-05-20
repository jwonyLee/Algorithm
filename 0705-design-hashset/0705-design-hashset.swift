
class MyHashSet {
    private var store: Set<Int>

    init() {
        self.store = []    
    }
    
    func add(_ key: Int) {
        store.insert(key)
    }
    
    func remove(_ key: Int) {
        store.remove(key)
    }
    
    func contains(_ key: Int) -> Bool {
        store.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */