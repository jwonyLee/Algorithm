// https://leetcode.com/problems/intersection-of-two-arrays-ii
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict1: [Int: Int] = [:]
        var dict2: [Int: Int] = [:]

        for num in nums1 {
            dict1[num, default: 0] += 1
        }
        for num in nums2 {
            dict2[num, default: 0] += 1
        }

        var answer: [Int] = []

        if nums1.count < nums2.count {
            for (key, value) in dict1 {
                if let count: Int = dict2[key] {
                    if count >= value {
                        for _ in 0..<value {
                            answer.append(key)
                        }
                    } else {
                        for _ in 0..<count {
                            answer.append(key)
                        }
                    }
                }
            }
        } else {
            for (key, value) in dict2 {
                if let count = dict1[key] {
                    if count >= value {
                        for _ in 0..<value {
                            answer.append(key)
                        }
                    } else {
                        for _ in 0..<count {
                            answer.append(key)
                        }
                    }
                }
            }
        }

        return answer
    }
}