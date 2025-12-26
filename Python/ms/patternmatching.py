
# def checkpattern(ref_str):
#     str_ref_ptr=[]
#     counter=1
#     for i in range(1,len(ref_str)):
#         if ref_str[i]==ref_str[i-1]:
#             counter+=1  
#         else:
#             str_ref_ptr.append(counter)
#             counter=1
#     str_ref_ptr.append(counter)  
#     return str_ref_ptr

def matchpattern(s, t):
    if len(s) != len(t):
        return False

    s_to_t = {}
    t_to_s = {}

    for a, b in zip(s, t):
        if s_to_t.get(a, b) != b or t_to_s.get(b, a) != a:
            return False
        s_to_t[a] = b
        t_to_s[b] = a
    return True

print(matchpattern("abbae", "cddce"))