# 41) Write a Python program to check whether a list contains a sub list 

a = [1,2,3,4,5,6,7,8,9]
b = [5,6,7,8,9]
result = str(b)[1:-1] in str(a)[1:-1]
print(result)

