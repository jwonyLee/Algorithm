let n = Int(readLine()!)!
struct node {
    let left: String
    let right: String
}

var tree: [String: node] = [:]

for _ in 0..<n {
    let nodes = readLine()!.split(separator: " ").map { String($0) }
    let root = nodes[0]
    let children = node(left: nodes[1], right: nodes[2])
    tree[root] = children
}

func preorder(_ root: String) -> String {
    var traversal = ""
    if root == "." {
        return ""
    }
    traversal += root
    traversal += preorder(tree[root]?.left ?? "")
    traversal += preorder(tree[root]?.right ?? "")
    return traversal
}

func inorder(_ root: String) -> String {
    var traversal = ""
    if root == "." {
        return ""
    }
    traversal += inorder(tree[root]?.left ?? "")
    traversal += root
    traversal += inorder(tree[root]?.right ?? "")
    return traversal
}

func postorder(_ root: String) -> String {
    var traversal = ""
    if root == "." {
        return ""
    }
    traversal += postorder(tree[root]?.left ?? "")
    traversal += postorder(tree[root]?.right ?? "")
    traversal += root
    return traversal
}

print(preorder("A"))
print(inorder("A"))
print(postorder("A"))