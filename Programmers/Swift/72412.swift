// 정확성 O, 효율성 X
import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var table = [[String]]()
    var result = [Int]()

    for i in info {
        let split = i.split(separator: " ").map { String($0) }
        table.append(split)
    }

    for q in query {
        let command = q.split(separator: " ").map { String($0) }

        // 언어 필터링
        var filtered = table
        if command[0] != "-" {
            filtered = filtered.filter {
                return command[0] == $0[0]
            }
        }
        // 직군 필터링
        if command[2] != "-" {
            filtered = filtered .filter {
                return command[2] == $0[1]
            }
        }
        // 경력 필터링
        if command[4] != "-" {
            filtered = filtered.filter {
                return command[4] == $0[2]
            }
        }
        // 소울 푸드 필터링
        if command[6] != "-" {
            filtered = filtered.filter {
                return command[6] == $0[3]
            }
        }
        // 점수 필터링
        if command[7] != "-" {
            filtered = filtered.filter {
                return Int(command[7])! <= Int($0[4])!
            }
        }
        result.append(filtered.count)
    }

    return result
}