# 46)Write a Python program to convert a list of tuples into a dictionary

x=[("a",1),("b",1)]  
new={}
for i in x:
    new[i[0]]=i[1]

print(new)    
    
