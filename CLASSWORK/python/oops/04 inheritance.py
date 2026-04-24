# class Animal:
#     def __init__(self,name,type):
#         self.name=name
#         self.type=type


#     def display(self):
#         print(self.name,self.type)



# class dog(Animal):

#     def __init__(self, name, type,height,weight):
#         super().__init__(name, type)
#         self.height=height
#         self.weight=weight

#     def display(self):
#         (self.name,self.type,self.height,self.weight)





# class cat(Animal):

#     def __init__(self, name, type):
#         super().__init__(name, type)

# a = cat("billi","s")
# a.display()



# class dog(Animal):


#     def __init__(self, name, type,color):
#         super().__init__(name, type)
#         self.name=name
#         self.type=type
#         self.color=color


#     def display(self):
#         print(self.name,self.type,self.color)




# a1 = dog("bjb","123","red")
# a1.display()





class bike():


    def __init__(self,model,color):
        self.model= model
        self.color= color


    def display(self):
        print(self.model,self.color)




class Honda(bike):


    def __init__(self, model, color,engine):
        super().__init__(model, color)
        self.model=model
        self.color=color
        self.engine=engine



    def  display(self):
        print(self.model,self.color,self.engine)    


# a1 = Honda("001","red")
# a1.display()  



a2 =Honda("003","Black","1500cc")
a2.display()








        





        