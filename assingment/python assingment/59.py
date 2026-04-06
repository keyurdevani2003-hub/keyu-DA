# 59) Write a Python program to create a dictionary from a string.
# Note: Track the count of the letters from the string

s = "programming"

s_dictionary = { }

for i in s:
    k = s.count(i)

    s_dictionary[i]= k

print(s_dictionary)
