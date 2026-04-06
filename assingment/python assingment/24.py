# 24) Write a Python function to insert a string in the middle of a string.

def insert_middle(main_str, insert_str):
    middle = len(main_str) // 2
    return main_str[:middle] + insert_str + main_str[middle:]



print(insert_middle("Python", "is"))    
