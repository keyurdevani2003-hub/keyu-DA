# 57) Write a Python program to find the highest 3 values in a dictionary

my_dict = {
    "a": 45,
    "b": 12,
    "c": 89,
    "d": 67,
    "e": 34
}

x = sorted(my_dict.items(), key=lambda a: a[1])

highest_value=[ ]
for i in x:
    print(i)
    highest_value.append(i[1])
print(highest_value)    
print(highest_value[-3],highest_value[-2],highest_value[-1])