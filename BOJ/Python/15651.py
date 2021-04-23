import sys
n, m = map(int, sys.stdin.readline().split())
picked = []

"""
 n: 전체 원소의 수
 picked: 지금까지 고른 원소들의 번호
 toPick: 더 고를 원소의 수
 일 때, 앞으로 toPick개의 원소를 고르는 모든 방법을 출력한다
"""
def pick(n: int, picked: [int], toPick: int):
    # 기저 사례: 더 고를 원소가 없을 때 고른 원소들을 출력한다.
    if toPick == 0:
        print(*picked)
        return
    # 원소 하나를 고른다.
    for next in range(1, n+1):
        picked.append(next)
        pick(n, picked, toPick - 1)
        picked.pop()

pick(n, picked, m)