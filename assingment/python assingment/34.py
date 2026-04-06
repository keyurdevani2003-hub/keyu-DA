# 34) Write a Python function that takes two lists and returns true if they
# have at least one common member.


def common_num(a, b):
    for i in a:
        if i in b:
            return True
    return False

# Test
print(common_num([1, 2, 3], [2, 6, 7]))

