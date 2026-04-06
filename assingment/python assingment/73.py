# 73) Write a Python program to append text to a file and display the text. 

f = open("D:/Python Practice/Assignment/Demo.txt",'a')
data = f.write("\nI append these line using append function in python")
print(data)
f.close()