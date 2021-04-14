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