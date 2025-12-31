def insertion_sort(arr):
    n = len(arr)
    
    for i in range(1, n):
        key = arr[i]        # element to be placed correctly
        j = i - 1

        # shift elements greater than key to one position ahead
        while j >= 0 and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1

        arr[j + 1] = key   # place key at correct position

    return arr

arr = [5, 2, 4, 6, 1, 3]
print(insertion_sort(arr))

# | Case         | Time Complexity |
# | ------------ | --------------- |
# | Best Case    | **O(n)**        |
# | Average Case | **O(n²)**       |
# | Worst Case   | **O(n²)**       |
