s=["cat","tac","dog","ogd"]

def arrange_anagrams(s):
    char_set=set()
    char_dict={}
    sorted_char=''
    for char in s:
        sorted_char = "".join(sorted(char))
        if sorted_char not in char_set : 
            char_set.add(sorted_char)
            char_dict[sorted_char] = [char]
        else:
            char_dict[sorted_char].append(char)
    return list(char_dict.values())

print(arrange_anagrams(s))