func solution(_ strings:[String], _ n:Int) -> [String] {
    let answer = strings.sorted(by: {
        if Array($0)[n] == Array($1)[n] {
            return $0 < $1
        }
        
        return Array($0)[n] < Array($1)[n]
    })

    return answer
}