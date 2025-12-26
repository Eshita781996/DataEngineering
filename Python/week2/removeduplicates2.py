def removeDuplicates(nums):
    if not nums:
        return 0

    k = 1  # pointer for unique elements

    for i in range(1, len(nums)):
        if nums[i] != nums[k - 1]:
            nums[k] = nums[i]
            k += 1

    return k


nums = [1, 1, 2, 2, 3, 4, 4]
k = removeDuplicates(nums)

print(k)
print(nums[:k])
