lst = [1, 2, 3, 2, 4, 1, 5]

seen = set()
unique_list = []

for x in lst:
    if x not in seen:
        seen.add(x)
        unique_list.append(x)

print(unique_list)