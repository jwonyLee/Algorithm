class BinaryTree<T> {
    var root: Node<T>?

    init(root: Node<T>) {
        self.root = root
    }

    func size() -> Int {
        self.root?.size() ?? 0
    }

    func depth() -> Int {
        self.root?.depth() ?? 0
    }

    func inorder() -> [T] {
        self.root?.inorder() ?? []
    }

    func preorder() -> [T] {
        self.root?.preorder() ?? []
    }

    func postorder() -> [T] {
        self.root?.postorder() ?? []
    }
}