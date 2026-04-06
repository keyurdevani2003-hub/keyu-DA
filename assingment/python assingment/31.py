# 31) Write a Python program to count the number of strings where the string
# length is 2 or more and the first and last character are same from a given list
# of strings.


words = ["abc", "xyz", "aba", "aa", "a"]

count =0
for i in words:
    if len(i) >=2 and  i[0]==i[-1]:
        count +=1
print("your reccuried strings is ",count)

