s="hello"
t="olleh"

if "".join(sorted(s))=="".join(sorted(t)):
    print(True)
else:
    print(False)

# def isAnagram(s: str, t: str) -> bool:
#     if len(s) != len(t):
#         return False

#     count = {}

#     for ch in s:
#         count[ch] = count.get(ch, 0) + 1

#     for ch in t:
#         if ch not in count:
#             return False
#         count[ch] -= 1
#         if count[ch] < 0:
#             return False

#     return True