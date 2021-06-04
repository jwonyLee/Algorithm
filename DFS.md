# DFS(깊이 우선 탐색)

```python
graph = {
    1: [2, 3, 4],
    2: [5],
    3: [5],
    4: [],
    5: [6, 7],
    6: [],
    7: [3],
}
```

## 재귀 구조

```python
def recursive_dfs(v, discovered=[]):
    discovered.append(v) # 방문한 정점 추가
    for w in graph[v]:
        if not w in discovered: # 방문하지 않은 정점이라면
            discovered = recursive_dfs(w, discovered) # discovered에 추가하면서 내부 탐색(재귀)
    return discovered
```
```python
discovered = [1, 2, 5, 6, 7, 3, 4]
```

## 스택을 이용한 반복 구조

스택을 이용해 모든 인접 간선을 추출하고 다시 도착점인 정점을 스택에 삽입하는 구조

```python
def iterative_dfs(start_v):
    discovered = []
    stack = [start_v]
    while stack:
        v = stack.pop()
        if v not in discovered: # 방문하지 않은 정점이라면
            discovered.append(v)
            for w in graph[v]:
                stack.append(w)
    return discovered

```
```python
discovered = [1, 4, 3, 5, 7, 6, 2]
```

스택으로 구현하게 되면 직관적이라 이해하기 쉽고, 실행 속도가 더 빠르다.

재귀 DFS는 사전식 순서로 방문, 반복 DFS는 역순으로 방문  
→ 스택으로 구현하다 보니 가장 마지막에 삽입된 노드부터 꺼내서 반복하게 되기 때문

## 재귀 in 알고리즘 문제 해결 전략
```swift
var adj = [[Int]]()
var visited = [Bool]()
func dfs(here: Int) {
    print("DFS visits \(here)")
    visited[here] = true
    // 모든 인접 정점을 순회하면서
    for i in 0..<adj[here].count {
        let there = adj[here][i]
        // 아직 방문한 적 없다면 방문한다.
        if !visited[there] {
            dfs(here: there)
        }
    }
    // 더이상 방문할 정점이 없으니, 재귀 호출을 종료하고 이전 정점으로 돌아간다.
}

// 모든 정점을 방문한다.
func dfsAll() {
    visited = Array(repeating: false, count: adj.count)
    // 모든 정점을 순회하면서, 아직 방문한 적 없으면 방문한다.
    for i in 0..<adj.count {
        if !visited[i] {
            dfs(here: i)
        }
    }
}
```