arr=[1,2,3,4]
n=len(arr)
right = [1]*n
left = [1]*n
left_product=1
right_product=1

for i in range(len(arr)):
    left[i]=left_product
    left_product*=arr[i]

for i in range(len(arr)-1,-1,-1):
    right[i]=right_product
    right_product*=arr[i]
result=[]
for i in range(n):
    result.append(left[i]*right[i])

print(result)
