# for i in range(1,100):
#     if i%2==0:
#         print("even number",i)
#     else:
#         print("odd number",i)  
 
# # number is armstrong or not

# number = 153
# temp =number 
# sum =0
# while number !=0:
#     rem =number%10
#     sum += (rem**3)
#     number =number//10

# if temp == sum:
#     print("armstrong")
# else:
#     print("not armstrong")
        
# 3 tlo 100 prime number or not chek

# sum =0
# for k in range(3,101):
#     number = k
#     flag = 0
#     for i in range(2,number):
#         rem = number%i
#         if rem==0:
#             flag=1
#             break
            
#     if flag==0:
#         sum+=number
#         print(f"{number} is prime")
#     else:
#         pass
#         # print(f" {number} is Not prime")
# print(sum)




# # factorial
# num=6
# fact = 1
# for i in range(1,7):
#     fact *= i
#     print(fact)


# num=5
# fact =1
# while num != 0:
#     fact=fact*num
#     num -= 1
# print(fact)


# #fibbonacci

# a,b=0,1

# for i in range (a,50):
#     print(a,end="")
#     a,b = b,a+b

# binary

# number = 155
# st=0     
# #st=" "
# m = 1     
# while number != 0:
#     rem = number%2
#     #st =str(rem)+st
#     st = (rem*m)+st            
#     number//=2                  
#     m*=10
# print(st) 

#octal

# number = 155
# st=0
# m=1
# while number != 0:
#     rem = number%8
#     st = (rem*m)+st
#     number//=8
#     m*=10
# print(st)  


# decimal to hexa number 

# number = 458
# st = ""


# a = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F']

# while number!=0:
#     rem = number%16
#     # st = str(rem)+st 
#     st = a[rem]+st
#     number//=16
    

# print(st)
    

    
 

# binary to decimal


# binary = 1011
# decimal = 0
# power = 0

# while binary > 0:
#     digit = binary % 10
#     decimal += digit * (2 ** power)
#     binary //= 10
#     power += 1

# print(decimal)


# octal to decimal

# octal = 255
# decimal = 0
# power = 0

# while octal > 0:
#     digit = octal % 10
#     decimal += digit * (8 ** power)
#     octal //= 10
#     power += 1

# print(decimal)




















