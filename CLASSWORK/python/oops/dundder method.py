# class sample:
    
#     a=10
#     def __str__(self):
#         return f"This is sample class object {self.a}"
    
# s = sample() 
# print(s)







# class demo:


#     def __init__(self,a,b):
#         self.a=a
#         self.b=b


#     def __eq__(self, value):
#         return  self.a==value.a and self.b==value.b

# d1 = demo(10,20)
# d2= demo(10,20)
# print(d1==d2)










# class sample:


#     def __init__(self,name):
#         self.name=name
        


#     def __len__(self):
#         return len(self.name)



# s=sample("sagar")
# print(len(s))











# class sample:


#     def __init__(self,a):

#         self.a=a


#     def  __getitem__(self,key):
#         return  self.a[key]


#     def  __setitem__(self,key,value):
#         self.a[key]=value


# s = sample([10,20,30,40])
# s[0]=500
# print(s.a)
# print(s[1])      



    