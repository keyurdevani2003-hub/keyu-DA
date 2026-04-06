# 74) Write a Python program to read first n lines of a file. 

n = int(input("Enter the line: "))

with open("D:/Python Practice/Assignment/Demo.txt",'r') as f:
    data = f.readlines(n)
    print(data)