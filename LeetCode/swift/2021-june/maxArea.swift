// source: https://dev.to/seanpgallivan/solution-maximum-area-of-a-piece-of-cake-after-horizontal-and-vertical-cuts-45p8
class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        let sortedH = horizontalCuts.sorted()
        let sortedV = verticalCuts.sorted()

        var maxH = max(sortedH[0], h - sortedH[sortedH.count - 1])
        var maxV = max(sortedV[0], w - sortedV[sortedV.count - 1])
    
        for i in 1..<sortedH.count {
            maxH = max(maxH, sortedH[i] - sortedH[i-1])
        }
        for i in 1..<sortedV.count {
            maxV = max(maxV, sortedV[i] - sortedV[i-1])
        }
        
        return maxH * maxV % 1000000007
    }
}