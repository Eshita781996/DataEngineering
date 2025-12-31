def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        swapped = False
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True
        if not swapped:
            break
    return arr


arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = bubble_sort(arr)

print(sorted_arr)

# | Algorithm              | Best   | Avg    | Worst  | Space |
# | ---------------------- | ------ | ------ | ------ | ----- |
# | Bubble Sort            | O(n)   | O(n²)  | O(n²)  | O(1)  |
# | Insertion Sort         | O(n)   | O(n²)  | O(n²)  | O(1)  |
# | Counting (Linear) Sort | O(n+k) | O(n+k) | O(n+k) | O(k)  |
