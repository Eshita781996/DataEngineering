def subarraySum(nums, k):
    count = 0
    curr_sum = 0
    prefix_map = {0: 1}  # very important

    for num in nums:
        curr_sum += num
        compliment  = curr_sum - k
        if compliment in prefix_map:
            count += prefix_map[compliment]

        prefix_map[curr_sum] = prefix_map.get(curr_sum, 0) + 1

    return count

print(subarraySum([1,1,1,1], 3))