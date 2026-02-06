class user:
    clg = "DSRTC"
    def __init__(self,name,email):
        self.name = name
        self.email = email


    def display(self):
        print(self.name,self.email,self.clg)




user.clg ="abc"


user.name="hello"
u=user("sagar","sagar@gmail.com")
u.display()


