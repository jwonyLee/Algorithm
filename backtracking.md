# Backtracking

```swift
/*
 n: 전체 원소의 수
 picked: 지금까지 고른 원소들의 번호
 toPick: 더 고를 원소의 수
 일 때, 앞으로 toPick개의 원소를 고르는 모든 방법을 출력한다
 */
func pick(n: Int, picked:inout [Int], toPick: Int) {
    // 기저 사례: 더 고를 원소가 없을 때 고른 원소들을 출력한다.
    if toPick == 0 {
        print(picked) // 출력
        results.append(picked) // 외부 변수에 조합 저장
        return
    }
    // 고를 수 있는 가장 작은 번호를 계산한다.
    let smallest = picked.isEmpty ? 0 : picked.last! + 1
    // 이 단계에서 원소 하나를 고른다.
    for next in smallest..<n {
        picked.append(next)
        pick(n: n, picked: &picked, toPick: toPick - 1)
        picked.removeLast()
    }
}
var results = [[Int]]()
var picked = [Int]()
pick(n: 7, picked: &picked, toPick: 4)
print(results)
```

책에 있는 예시를 그대로 옮기면 위와 같은 형태인데, 이 방식을 응용해서 백준에 N과 M 시리즈를 풀면 시간 초과가 난다. 재귀로 매번 배열을 넘기는 게 비용이 많이 든다. 그래서 이걸 약간의 입맛에 맞게 변형한 베이스 코드는 다음과 같다. 최근에 풀었던 완전탐색 문제는 대부분 하기 코드를 베이스로 작성했다.

```swift
var picked = [Int]()
func pick(toPick: Int) {
    if toPick == 0 {
        /*
        데이터를 저장해야한다거나, 별도의 처리가 필요하면 이 시점에 처리한다.
        */
        return
    }
    for i in 0..<n {
        picked.append(i)
        pick(toPick: toPick - 1)
        picked.removeLast()
    }
}
```

이제 여기서 때에 따라 중복 처리가 필요하면 `visited` 변수를 추가하거나, 구한 조합을 저장해야하면 `results` 변수를 따로 두어서 `toPick == 0`일 때 저장한다.

## 참고 자료

프로그래밍 대회에서 배우는 알고리즘 문제 해결 전략