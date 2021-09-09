// https://leetcode.com/problems/palindrome-number/
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        String(x) == String(String(x).reversed())
    }
}