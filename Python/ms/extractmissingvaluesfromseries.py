arr = [1, 3, 5]

missing = [x for x in range(min(arr), max(arr)+1) if x not in arr]

print(missing)