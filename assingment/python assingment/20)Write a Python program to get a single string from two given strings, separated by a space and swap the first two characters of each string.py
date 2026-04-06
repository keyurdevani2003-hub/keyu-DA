
str1 = input()
str2 = input()

if len(str1) < 2 or len(str2) < 2:
    result = str2 + " " + str1
else:
    result = str2[:2] + str1[2:] + " " + str1[:2] + str2[2:]

print(result)






