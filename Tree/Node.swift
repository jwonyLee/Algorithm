class Node<T> {
    var data: T
    var left: Node<T>?
    var right: Node<T>?

    init(item: T) {
        self.data = item
        self.left = nil
        self.right = nil
    }

    func size() -> Int {
        (self.left?.size() ?? 0) + (self.right?.size() ?? 0) + 1
    }

    func depth() -> Int {
        let l = self.left?.depth() ?? 0
        let r = self.right?.depth() ?? 0
        return l < r ? l + 1 : r + 1
    }

    func inorder() -> [T] {
        var traversal: [T] = []
        if let left = self.left {
            traversal += left.inorder()
        }
        traversal.append(self.data)
        if let right = self.right {
            traversal += right.inorder()
        }
        return traversal
    }

    func preorder() -> [T] {
        var traversal: [T] = []
        traversal.append(self.data)
        if let left = self.left {
            traversal += left.preorder()
        }
        if let right = self.right {
            traversal += right.preorder()
        }
        return traversal
    }

    func postorder() -> [T] {
        var traversal: [T] = []
        if let left = self.left {
            traversal += left.postorder()
        }
        if let right = self.right {
            traversal += right.postorder()
        }
        traversal.append(self.data)
        return traversal
    }
}