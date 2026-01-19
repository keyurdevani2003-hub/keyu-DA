num = 123
swap=0
while num!=0:
    rem = num%10
    swap =10*swap + rem
    num//=10
print(swap)    
