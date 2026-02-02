# def before(func):
#     def execute():
#         print("Calling before test")
#         func()
#     return  execute


# @before
# def test():
#     print("test calling")



# test()    
    

# def add(func):
#     def execute(*k):
#         print(f"addition of {k[0] and {k[1]} is {k[0]}+{k[1]}}")
#         func(*k)
#     return execute


# def mul(func):
#     def execute(*k):
#         print(f"mul of {k[0]} and {k[1]} is {k[0]*k[1]}")
#         func(*k)

# @add
# def calc(a,b):
#     pass

# calc(10,20)


# pass only digit  

def check(func):
    def execute(a):
        if a.isdigit():
            print(a)
        func(a)
        return execute



@check
def data(a):
    print(a)
    pass


data("bkjcs")


