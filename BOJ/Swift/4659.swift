let vowel = Array("aeiou")
while let input = readLine() {
    if input == "end" {
        break
    }
    var isAcceptable = true

    // 모음 하나를 반드시 포함
    if !input.contains(where: {vowel.contains($0)}) {
        isAcceptable = false
    }

    // 모음이 3개 혹은 자음이 3개 연속으로 오면 안 된다.
    var arr = Array(input)
    var isVowel = vowel.contains(input.first!)
    var prevChar = input.first!
    var count = 0
    var max = arr.count
    for i in 1..<max {
        if isVowel && vowel.contains(arr[i]) { // 이전 문자가 모음이면서, 현재 문자도 모음인 경우
            count += 1
        } else if !isVowel && !vowel.contains(arr[i]) { // 이전 문자가 자음이면서, 현재 문자도 모음인 경우
            count += 1
        } else {
            isVowel = !isVowel
            count = 0
        }

        // 같은 글자가 연속적으로 두번 오면 안됨. ee와 oo는 허용
        if prevChar == arr[i] && prevChar != "e" && prevChar != "o" {
            isAcceptable = false
        }

        prevChar = arr[i]
        if count >= 2 {
            isAcceptable = false
        }
    }

    if isAcceptable {
        print("<\(input)> is acceptable.")
    } else {
        print("<\(input)> is not acceptable.")
    }
}