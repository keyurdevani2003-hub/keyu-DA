#23)Write a Python program to get a string made of the first 2 and the last
# 2 chars from a given a string. If the string length is less than 2, return
# instead of the empty string.


s="keyu"

if len(s)<2:
    s.clear()
else:
    s1 =s[0:2]+s[-2]+s[-1]
    print(s1)    