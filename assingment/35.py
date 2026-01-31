# 35) Write a Python program to generate and print a list of first and last 5
# elements where the values are square of numbers between 1 and 30.

x= [ ]
for i in range(1,31):
    k = i**2
    x.append(k)
print(x)

print(x[:5])
print(x[-5:])
