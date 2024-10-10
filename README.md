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

### 배열의 특정 인덱스부터 ~ 특정 인덱스까지 가져오기

#### from 인덱스 포함
```swift
let array = [1, 5, 4, 3, 2, 5, 7]
print(array[1...3]) // [5, 4, 3]
```

#### from 인덱스 미포함
```swift
let array = [1, 5, 4, 3, 2, 5, 7]
print(array[1..<3]) // [5, 4]
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

## 숫자

### 소수 반올림

```swift
let input = 3.14159265358979323846264338327950288
print(round(input))
```

### 소수 올림

```swift
let input = 3.14159265358979323846264338327950288
print(ceil(input))
```

### 소수 내림

```swift
let input = 3.14159265358979323846264338327950288
print(floor(input))
```

### 소수점 n자리까지 반올림

```swift
let input = 3.14159265358979323846264338327950288
print(round(input * 1000) / 1000) // 3자리, 3.142
```

```swift
let input = 3.14159265358979323846264338327950288
print(String(format: "%.3f", input))
```

## 날짜

### 문자열 날짜를 Date 객체로 변환

```swift
let formatter: DateFormatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
formatter.timeZone = TimeZone.current

let dateString: String = "2021-08-14"
let date: Date = formatter.date(from: dateString)!
```

### Date 객체의 어제/내일 구하기

```swift
let tomorrow: Date = Calendar.current.date(byAdding: .day, value: 1, to: date)!
let yesterday: Date = Calendar.current.date(byAdding: .day, value: -1, to: date)!
```

### 두 날짜의 차이 구하기 (일)

```swift
let diffDay: Double = (tomorrow.timeIntervalSince(yesterday) / 3600) / 24
```

### 두 날짜의 대소 비교

```swift
if tomorrow == yesterday {
    print("==")
} else if tomorrow > yesterday {
    print("lhs >")
} else {
    print("rhs <")
}
```

## 문자열

### 문자열의 특정 인덱스에 접근하기

#### subscript
```swift
extension String {
    subscript(offset: Int) -> String {
        get {
            let index = String.Index(utf16Offset: offset, in: self)
            return String(self[index])
        }
    }
```

```swift
let string = "test"
print(string[1]) // e
```

#### 배열
```swift
let string = "test"
let arr = Array(string).compactMap { String($0) }
print(arr[1]) // e
```

## 문자열 치환하기

```swift
// match list
let matchs = [
    ("컴퓨터", "computer"),
    ("메모리", "memory")
]

var string = "computer는 memory를 갖고 있다."
for match in matchs {
    string = string.replacingOccurrences(of: match.1, with: match.0)
}

print(string) // 컴퓨터는 메모리를 갖고 있다.
```
<!---LeetCode Topics Start-->
# LeetCode Topics
## Array
|  |
| ------- |
| [1528-kids-with-the-greatest-number-of-candies](https://github.com/jwonyLee/Algorithm/tree/master/1528-kids-with-the-greatest-number-of-candies) |
| [1833-find-the-highest-altitude](https://github.com/jwonyLee/Algorithm/tree/master/1833-find-the-highest-altitude) |
## String
|  |
| ------- |
| [3379-score-of-a-string](https://github.com/jwonyLee/Algorithm/tree/master/3379-score-of-a-string) |
## Prefix Sum
|  |
| ------- |
| [1833-find-the-highest-altitude](https://github.com/jwonyLee/Algorithm/tree/master/1833-find-the-highest-altitude) |
<!---LeetCode Topics End-->