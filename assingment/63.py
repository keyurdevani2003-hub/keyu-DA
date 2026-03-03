# 63) Write a Python function to check whether a number is perfect or not.

def perfect_num(a):
    n= [ ]
    total = 0 
    for i in range(1,a-1):
        if a%i==0:
            n.append(i)
            total += i
    print(total)        
    if total == a:
        print("perfect number")
    else:
        print("not perfect number ")

        
perfect_num(6)         


