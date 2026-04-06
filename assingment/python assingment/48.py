# 48) Write a Python script to sort (ascending and descending) a
# dictionary by value.


x = {'apple': 5, 'banana': 2, 'orange': 8, 'mango': 3}

y= dict(sorted(x.items(),key=lambda a:a[1]))

print(y)


desc_sorted = dict(sorted(x.items(), key=lambda item: item[1], reverse=True))
print("Descending:", desc_sorted)



