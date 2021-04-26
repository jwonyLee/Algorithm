import Foundation

func solution(_ dirs:String) -> Int {
    var curX = 0
    var curY = 0
    var prevX = 0
    var prevY = 0
    let max = 5
    var visited = [[Int]]()
    
    for (i, dir) in dirs.enumerated() {
        if dir == "U" {
            if -5...4 ~= curY {
                curY += 1    
            } else {
                continue
            }
        } else if dir == "D" {
            if -4...5 ~= curY {
                curY -= 1    
            } else {
                continue
            }
        } else if dir == "R" {
            if -5...4 ~= curX {
                curX += 1    
            } else {
                continue
            }
        } else if dir == "L" {
            if -4...5 ~= curX {
                curX -= 1
            } else {
                continue
            }
        }
        
        // 안 가본 길이면 넣기
        if !visited.contains([curX, curY, prevX, prevY]) && !visited.contains([prevX, prevY, curX, curY]) { 
            visited.append([curX, curY, prevX, prevY])
            print(i)
        }
        prevX = curX
        prevY = curY
    }
    
    return visited.count
}