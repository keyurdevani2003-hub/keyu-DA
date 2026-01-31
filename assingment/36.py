# 36) Write a Python function that takes a list and returns a new list with
# unique elements of the first list.

def unique_list(lst):
    unique = []
    for item in lst:
        if item not in unique:
            unique.append(item)
    return unique

numbers = [1, 2, 2, 3, 4, 4, 5]
print(unique_list(numbers))
