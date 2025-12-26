s='abcdefab'
charset=set()
maxlen=0
left=0
for right in range(len(s)):
    while(s[right] in charset):
        charset.remove(s[left])
        left=left+1
    charset.add(s[right])
    maxlen=max(maxlen,right-left+1)

print(maxlen)