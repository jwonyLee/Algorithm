// https://leetcode.com/problems/implement-queue-using-stacks/
class MyQueue {
    private var input: [Int]
    private var output: [Int]
    
    /** Initialize your data structure here. */
    init() {
        input = []
        output = []
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        input.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        while !input.isEmpty {
            output.append(input.removeLast())
        }
        let answer = output.removeLast()
        while !output.isEmpty {
            input.append(output.removeLast())
        }
        return answer
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return input[0]
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        input.isEmpty && output.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */