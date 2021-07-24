import Foundation

func solution(_ record:[String]) -> [String] {
    var answer = [String]()
    var stack = [(String, String)]()
    var id = [String: String]()
    for r in record {
        let command = r.split(separator: " ").map { String($0) }
        if command[0] == "Enter" || command[0] == "Change" {
            id[command[1]] = command[2]
            stack.append((command[0], command[1]))
        } else if command[0] == "Leave" {
            stack.append((command[0], command[1]))
        }
    }
    for s in stack {
        let nickname = id[s.1]!
        if s.0 == "Enter" {
            answer.append(nickname + "님이 들어왔습니다.")
        } else if s.0 == "Leave" {
            answer.append(nickname + "님이 나갔습니다.")
        }
    }
    return answer
}