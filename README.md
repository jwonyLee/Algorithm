# Algorithm

## ìë ¥

### ê³µë°±ì ë¶ë¦¬ í, `Int`íì ë³ííì¬ ë°°ì´ì ì ì¥
```swift
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
```

### EOFê¹ì§ ìë ¥
```swift
while let input = readLine() {
  // ìëµ
}
```

## ë°°ì´

### ë°°ì´ì ëª¨ë  ê°ì´ ê°ì ì§ íì¸íê¸°
```swift
let array = ["1", "1", "1"]

if array.allSatisfy({ $0 == "1" }) {
  // ëª¨ë  ê°ì´ ê°ì¼ë©´ ì²ë¦¬
} else {
  // ëª¨ë  ê°ì´ íëë¼ë ê°ì§ ìì¼ë©´ ì²ë¦¬
}
```

### 2ì°¨ì ë°°ì´ì í© êµ¬íê¸°
```swift
let array = [[1, 2, 3], [3, 4, 5], [6, 7, 8]]
let sum = array.reduce([], +).reduce(0, +) // 36
```

### 2ì°¨ì ë°°ì´ì í, ì´ 1ì°¨ì ë°°ì´ë¡ ì¶ì¶íê¸°
```swift
let array = [[1, 2, 3], [3, 4, 5], [6, 7, 8]]
let row = array[1] // [3, 4, 5]
let column = array.map { $0[0] } // [1, 3, 6]
```

### ë°°ì´ì í¹ì  ì¸ë±ì¤ë¶í° ~ í¹ì  ì¸ë±ì¤ê¹ì§ ê°ì ¸ì¤ê¸°

#### from ì¸ë±ì¤ í¬í¨
```swift
let array = [1, 5, 4, 3, 2, 5, 7]
print(array[1...3]) // [5, 4, 3]
```

#### from ì¸ë±ì¤ ë¯¸í¬í¨
```swift
let array = [1, 5, 4, 3, 2, 5, 7]
print(array[1..<3]) // [5, 4]
```

## ë²ì

### í¹ì  ì«ìê° í´ë¹ ë²ìì ìë ì§ íì¸íê¸°
```swift
var num = 15
if 0...12 ~= num {
  // í¬í¨ëì´ ìì
} else {
  // í¬í¨ëì´ ìì§ ìì
}
```

## ì«ì

### ìì ë°ì¬ë¦¼

```swift
let input = 3.14159265358979323846264338327950288
print(round(input))
```

### ìì ì¬ë¦¼

```swift
let input = 3.14159265358979323846264338327950288
print(ceil(input))
```

### ìì ë´ë¦¼

```swift
let input = 3.14159265358979323846264338327950288
print(floor(input))
```

### ììì  nìë¦¬ê¹ì§ ë°ì¬ë¦¼

```swift
let input = 3.14159265358979323846264338327950288
print(round(input * 1000) / 1000) // 3ìë¦¬, 3.142
```

```swift
let input = 3.14159265358979323846264338327950288
print(String(format: "%.3f", input))
```

## ë ì§

### ë¬¸ìì´ ë ì§ë¥¼ Date ê°ì²´ë¡ ë³í

```swift
let formatter: DateFormatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
formatter.timeZone = TimeZone.current

let dateString: String = "2021-08-14"
let date: Date = formatter.date(from: dateString)!
```

### Date ê°ì²´ì ì´ì /ë´ì¼ êµ¬íê¸°

```swift
let tomorrow: Date = Calendar.current.date(byAdding: .day, value: 1, to: date)!
let yesterday: Date = Calendar.current.date(byAdding: .day, value: -1, to: date)!
```

### ë ë ì§ì ì°¨ì´ êµ¬íê¸° (ì¼)

```swift
let diffDay: Double = (tomorrow.timeIntervalSince(yesterday) / 3600) / 24
```

### ë ë ì§ì ëì ë¹êµ

```swift
if tomorrow == yesterday {
    print("==")
} else if tomorrow > yesterday {
    print("lhs >")
} else {
    print("rhs <")
}
```

## ë¬¸ìì´

### ë¬¸ìì´ì í¹ì  ì¸ë±ì¤ì ì ê·¼íê¸°

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

#### ë°°ì´
```swift
let string = "test"
let arr = Array(string).compactMap { String($0) }
print(arr[1]) // e
```

## ë¬¸ìì´ ì¹ííê¸°

```swift
// match list
let matchs = [
    ("ì»´í¨í°", "computer"),
    ("ë©ëª¨ë¦¬", "memory")
]

var string = "computerë memoryë¥¼ ê°ê³  ìë¤."
for match in matchs {
    string = string.replacingOccurrences(of: match.1, with: match.0)
}

print(string) // ì»´í¨í°ë ë©ëª¨ë¦¬ë¥¼ ê°ê³  ìë¤.
```
<!---LeetCode Topics Start-->
# LeetCode Topics
## Array
|  |
| ------- |
| [0001-two-sum](https://github.com/jwonyLee/Algorithm/tree/master/0001-two-sum) |
| [0349-intersection-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/0349-intersection-of-two-arrays) |
| [1392-find-the-difference-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/1392-find-the-difference-of-two-arrays) |
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
## Hash Table
|  |
| ------- |
| [0001-two-sum](https://github.com/jwonyLee/Algorithm/tree/master/0001-two-sum) |
| [0349-intersection-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/0349-intersection-of-two-arrays) |
| [1392-find-the-difference-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/1392-find-the-difference-of-two-arrays) |
## Two Pointers
|  |
| ------- |
| [0349-intersection-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/0349-intersection-of-two-arrays) |
## Binary Search
|  |
| ------- |
| [0349-intersection-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/0349-intersection-of-two-arrays) |
## Sorting
|  |
| ------- |
| [0349-intersection-of-two-arrays](https://github.com/jwonyLee/Algorithm/tree/master/0349-intersection-of-two-arrays) |
## Math
|  |
| ------- |
| [2752-sum-multiples](https://github.com/jwonyLee/Algorithm/tree/master/2752-sum-multiples) |
<!---LeetCode Topics End-->