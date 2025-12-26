def topKFrequent(nums, k):
    from collections import Counter

    count = Counter(nums)
    
    # Buckets where index = frequency
    buckets = [[] for i in range(len(nums)+1)]

    for num, freq in count.items():
        buckets[freq].append(num)
    
    res = []
    for freq in range(len(buckets) - 1, 0, -1):
        
        print(freq,buckets[freq])
        # for num in buckets[freq]:
           
        #     res.append(num)
        #     if len(res) == k:
        #         return res
print(topKFrequent([1,4,4,3,3,5,5], 3))