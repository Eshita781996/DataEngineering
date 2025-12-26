# def checkInclusion(s1, s2):
#     k = len(s1)
#     for i in range(len(s2) - k + 1):
#         print(i,i+k)
#         if sorted(s2[i:i+k]) == sorted(s1):
#             return True
#     return False
def checkInclusion(s1, s2):
    if len(s1) > len(s2):
        return False

    from collections import Counter
    need = Counter(s1)
    window = Counter()

    left = 0
    for right in range(len(s2)):
        window[s2[right]] += 1

        if right - left + 1 > len(s1):
            window[s2[left]] -= 1
            if window[s2[left]] == 0:
                del window[s2[left]]
            left += 1

        if window == need:
            return True

    return False


print(checkInclusion("bd", "eidbaooo"))