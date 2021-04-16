# Algorithm

## 입력

### 공백을 분리 후, `Int`형을 변환하여 배열에 저장
```swift
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
```

### EOF까지 입력
```swift
while let input = readLine() {
  // 생략
}
```

## 배열

### 배열의 모든 값이 같은 지 확인하기
```swift
let array = ["1", "1", "1"]

if array.allSatisfy({ $0 == "1" }) {
  // 모든 값이 같으면 처리
} else {
  // 모든 값이 하나라도 같지 않으면 처리
}
```

### 2차원 배열의 합 구하기
```swift
let array = [[1, 2, 3], [3, 4, 5], [6, 7, 8]]
let sum = array.reduce([], +).reduce(0, +) // 36
```

### 2차원 배열의 행, 열 1차원 배열로 추출하기
```swift
let array = [[1, 2, 3], [3, 4, 5], [6, 7, 8]]
let row = array[1] // [3, 4, 5]
let column = array.map { $0[0] } // [1, 3, 6]
```

## 범위

### 특정 숫자가 해당 범위에 있는 지 확인하기
```swift
var num = 15
if 0...12 ~= num {
  // 포함되어 있음
} else {
  // 포함되어 있지 않음
}
```