// https://leetcode.com/problems/first-bad-version/
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var first = 1
        var last = n
        while first <= last {
            let middle = (first + last) / 2
            if !isBadVersion(middle) && isBadVersion(middle - 1) {
                return middle
            }
            if isBadVersion(middle) {
                last = middle - 1
            } else {
                first = middle + 1
            }
        }
        return first
    }
}