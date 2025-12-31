
def linear_sort(arr):
    if not arr:
        return arr

    max_val = max(arr)
    count = [0] * (max_val + 1)

    # Count frequency
    for num in arr:
        count[num] += 1

    # Rebuild array
    idx = 0
    for i in range(len(count)):
        while count[i] > 0:
            arr[idx] = i
            idx += 1
            count[i] -= 1

    return arr
arr = [4, 2, 2, 8, 3, 3, 1]
sorted_arr = linear_sort(arr)

print(sorted_arr)

# | Case    | Time Complexity |
# | ------- | --------------- |
# | Best    | **O(n + k)**    |
# | Average | **O(n + k)**    |
# | Worst   | **O(n + k)**    |
