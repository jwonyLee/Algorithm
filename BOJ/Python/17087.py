# https://www.acmicpc.net/problem/17087
# 숨바꼭질 6
import sys

def gcd(a, b):
    while b != 0:
        r = a % b
        a, b = b, r
    return a

n, s = map(int, sys.stdin.readline().split())
arr = list(map(int, sys.stdin.readline().split()))

g = abs(s - arr[0])
for i in range(1, n):
    g = gcd(g, abs(s - arr[i]))

print(g)