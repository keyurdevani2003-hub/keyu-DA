# 29 Write a Python function to get the largest number, smallest num
# # and sum of all from a list


def kd():
    sum =0
    list1 = [23,45,21,67,64,78,54]
    
    if list1 is not []:
        for i in list1:
            sum += i
        print(f"sum of all total values: {sum}")
        
    print(f"largest number in list: {max(list1)} and smallest number in list {min(list1)}")
    
kd()

