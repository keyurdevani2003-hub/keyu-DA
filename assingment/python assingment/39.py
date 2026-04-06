# 39)Write a Python program to find the second smallest number in a list.


smlst = [4,5,6,73,2,8,9,43,6]

x= []
for i in smlst:
    if i not in x:
        x.append(i)


x.sort()
print(x)

print(f" Second smallest number is : {x[1]}")
