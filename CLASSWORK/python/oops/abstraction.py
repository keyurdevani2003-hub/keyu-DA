from abc import ABC,abstractmethod



class account(ABC):
    balance = 0
    @abstractmethod
    def deposite(self,amt):
        pass

    @abstractmethod
    def withdraw(self,amt):
        pass



    def checkbalance(self):
        print(f"Current balance is {self.balance}")



# class savingaccount(account):

#     def deposite(self, amt):
#         self.balance=self.balance+amt


#     def    withdraw(self, amt):
#         if amt>self.balance:
#             print("Insuficent balance")
#         else:    
#             self.balance=self.balance-amt


#     def checkbalance(self):
#         return super().checkbalance()        


# d1 = savingaccount()    
# d1.deposite(50000)
# d1.checkbalance()                    




class loanaccount(account):


    def  withdraw(self, amt):
        self.balance=self.balance+amt


    def  deposite(self, amt):
        if self.balance==0 :
            print("no loan")
        else:
            if amt <= self.balance:    
                self.balance=self.balance-amt
            else:
               print(f"you have add more than loan amount your loan is only{self.balance}")    


    def checkbalance(self):
        print(f"your loan is {self.balance}")    


a1=loanaccount()
a1.withdraw(5000)
# a1.checkbalance()    
# a1.deposite(3000) 
# a1.checkbalance()   
# a1.deposite(2000)
# a1.checkbalance()    
    
# a1.deposite(1000)

# a1.deposite(6000)
a1.deposite(4000)
a1.checkbalance()
