import Foundation

struct edge: Comparable {
    static func < (lhs: edge, rhs: edge) -> Bool {
        return lhs.w < rhs.w
    }

    var v: Int
    var w: Int
}

var fileio = FileIO()
let inf = 987654321
let v = fileio.readInt()
let e = fileio.readInt()
let k = fileio.readInt()
// u에서 v로 가는 가중치 w
var graph = [[(Int, Int)]]()
for _ in 0...v {
    graph.append([])
}
for _ in 0..<e {
    let u = fileio.readInt()
    let v = fileio.readInt()
    let w = fileio.readInt()
    graph[u].append((v, w))
}

var src = k
var distance = Array(repeating: inf, count: v + 1)
distance[src] = 0
var pq: Heap = Heap<edge>(sort: >)
pq.insert(edge(v: src, w: 0))
while !pq.isEmpty {
    let cost = -pq.peek()!.w
    let here = pq.peek()!.v
    pq.remove()
    // 만약 지금 꺼낸 것보다 더 짧은 경로를 알고 있다면 지금 꺼낸 것을 무시한다.
    if distance[here] < cost {
        continue
    }
    // 인접한 정점들을 모두 검사한다.
    for i in 0..<graph[here].count {
        let there = graph[here][i].0
        let nextDistance = cost + graph[here][i].1
        // 더 짧은 경로를 발견하면, dist[]를 갱신하고 우선순위 큐에 넣는다.
        if distance[there] > nextDistance {
            distance[there] = nextDistance
            pq.insert(edge(v: there, w: -nextDistance))
        }
    }
}

for d in 1..<distance.count {
    if distance[d] == inf {
        print("INF")
    } else {
        print(distance[d])
    }
}

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10 && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }

        return str
    }
}

public struct Heap<T> {
    var nodes = [T]()

    private var orderCriteria: (T, T) -> Bool

    public init(sort: @escaping (T, T) -> Bool) {
        self.orderCriteria = sort
    }

    public init(array: [T], sort: @escaping (T, T) -> Bool) {
        self.orderCriteria = sort
        configureHeap(from: array)
    }

    private mutating func configureHeap(from array: [T]) {
        nodes = array
        for i in stride(from: (nodes.count/2-1), through: 0, by: -1) {
            shiftDown(i)
        }
    }

    public var isEmpty: Bool {
        return nodes.isEmpty
    }

    public var count: Int {
        return nodes.count
    }

    @inline(__always) internal func parentIndex(ofIndex i: Int) -> Int {
        return (i - 1) / 2
    }

    @inline(__always) internal func leftChildIndex(ofIndex i: Int) -> Int {
        return 2*i + 1
    }

    @inline(__always) internal func rightChildIndex(ofIndex i: Int) -> Int {
        return 2*i + 2
    }

    public func peek() -> T? {
        return nodes.first
    }

    public mutating func insert(_ value: T) {
        nodes.append(value)
        shiftUp(nodes.count - 1)
    }

    public mutating func insert<S: Sequence>(_ sequence: S) where S.Iterator.Element == T {
        for value in sequence {
            insert(value)
        }
    }

    public mutating func replace(index i: Int, value: T) {
        guard i < nodes.count else { return }

        remove(at: i)
        insert(value)
    }

    @discardableResult public mutating func remove() -> T? {
        guard !nodes.isEmpty else { return nil }

        if nodes.count == 1 {
            return nodes.removeLast()
        } else {
            let value = nodes[0]
            nodes[0] = nodes.removeLast()
            shiftDown(0)
            return value
        }
    }

    @discardableResult public mutating func remove(at index: Int) -> T? {
        guard index < nodes.count else { return nil }

        let size = nodes.count - 1
        if index != size {
            nodes.swapAt(index, size)
            shiftDown(from: index, until: size)
            shiftUp(index)
        }
        return nodes.removeLast()
    }

    internal mutating func shiftUp(_ index: Int) {
        var childIndex = index
        let child = nodes[childIndex]
        var parentIndex = self.parentIndex(ofIndex: childIndex)

        while childIndex > 0 && orderCriteria(child, nodes[parentIndex]) {
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(ofIndex: childIndex)
        }

        nodes[childIndex] = child
    }

    internal mutating func shiftDown(from index: Int, until endIndex: Int) {
        let leftChildIndex = self.leftChildIndex(ofIndex: index)
        let rightChildIndex = leftChildIndex + 1

        var first = index
        if leftChildIndex < endIndex && orderCriteria(nodes[leftChildIndex], nodes[first]) {
            first = leftChildIndex
        }
        if rightChildIndex < endIndex && orderCriteria(nodes[rightChildIndex], nodes[first]) {
            first = rightChildIndex
        }
        if first == index { return }

        nodes.swapAt(index, first)
        shiftDown(from: first, until: endIndex)
    }

    internal mutating func shiftDown(_ index: Int) {
        shiftDown(from: index, until: nodes.count)
    }

}

// MARK: - Searching
extension Heap where T: Equatable {

    public func index(of node: T) -> Int? {
        return nodes.firstIndex(where: { $0 == node })
    }

    @discardableResult public mutating func remove(node: T) -> T? {
        if let index = index(of: node) {
            return remove(at: index)
        }
        return nil
    }

}