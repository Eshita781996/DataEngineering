def twoSum(nums,target):
    seen={}
    for i,num in enumerate(nums):
        complement = target-num
        if complement in seen:
            return [seen[complement],i]
        seen[num]=i

print(twoSum([2,7,9,8],9))