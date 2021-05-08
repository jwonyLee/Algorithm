def solution(prices):
    time = [0] * len(prices)
    for i in range(0, len(prices)):
        for j in range(i + 1, len(prices)):
            if prices[i] > prices[j]: # 가격이 떨어진 시점
                time[i] = j - i
                break
        if time[i] == 0:
            time[i] = len(prices) - i - 1
    return time