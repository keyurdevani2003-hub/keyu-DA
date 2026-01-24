#21)  Write a Python program to add 'in' at the end of a given string (length
# should be at least 3). If the given string already ends with 'ing' then
# add 'ly' instead if the string length of the given string is less than 3,
# leave it unchanged.


s ="keing"
if len(s)<3:
    print(s)

elif s.endswith("ing"):
    print(s+"ly")


else:
    print(s +"in")




    


 
