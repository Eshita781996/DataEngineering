# Divide and Conquer
# Binary Exponentiation
# Fast Power Algorithm
# Exponentiation by Squaring

def myPow(x: float, n: int) -> float:
    if n == 0:
        return 1

    if n < 0:
        x = 1 / x
        n = -n

    def power(x, n):
        if n == 0:
            return 1

        half = power(x, n // 2)

        if n % 2 == 0:
            return half * half
        else:
            return half * half * x

    return power(x, n)


print(myPow(2, 10))   # 1024
print(myPow(2, -2))   # 0.25
