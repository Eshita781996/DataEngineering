def minEatingSpeed(piles, h):
    left, right = 1, max(piles)

    while left < right:
        mid = (left + right) // 2
        hours = 0

        for pile in piles:
            hours += (pile + mid - 1) // mid  # ceil division

        if hours > h:
            left = mid + 1   # too slow
        else:
            right = mid      # possible answer

    return left

piles = [3, 6, 7, 11]
h = 8
print(minEatingSpeed(piles, h))
