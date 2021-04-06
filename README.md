# Algorithm

## 입력

공백을 분리 후, `Int`형을 변환하여 배열에 저장
```swift
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
```

EOF까지 입력
```swift
while let input = readLine() {
  // 생략
}
```
