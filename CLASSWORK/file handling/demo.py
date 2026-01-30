# f = open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt",,'w')
# # f.write("Hello, someting")
# f.writelines(["Hello python\n","Hello Tops\n","Hello World"])
# f.close()


# f = open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt",'a')
# f.write("Hello, something")
# f.close()


# f = open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt",'r')
# data = f.read()
# print(data)
# f.close()


# with open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt", "r") as f:
#     print(f.read())



# with open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt", "r") as f:

#     while True:
#         data  = f.readline()
#     # if "Hello" in data:
#     #     print(data)
#         if not data:
#             break
#         print(len(data))


# with open(r"C:\Users\HP\OneDrive\Desktop\Tops\CLASSWORK\file handling\test.txt", "r") as f:
#     f.seek(10)
#     print(f.tell())
#     data = f.read()
#     print(f.tell())
#     print(data)

# with open("home.txt",'w+') as f:
#     f.write("something")
#     f.seek(0)
#     data = f.read()
#     print(data)


# with open("home.txt",'r+') as f:
#     # f.seek(0)
#     f.write("XYZ")
#     data = f.read()
#     print(data)


# with open("logo.png",'rb') as f:
#     data = f.read()
#     print(data)