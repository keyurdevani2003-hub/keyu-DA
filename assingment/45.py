# 45) Write a Python program to unzip a list of tuples into individual lists. 

x = [(1, 2, 3), (4, 5, 6)]

a, b, c = zip(*x)

print(list(a))
print(list(b))
print(list(c))

