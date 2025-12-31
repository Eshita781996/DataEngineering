arr = [1, 3, 5, 7]
x = 4

i = 0
while i < len(arr) and arr[i] < x:
    i += 1

arr.insert(i, x)

print(arr)
