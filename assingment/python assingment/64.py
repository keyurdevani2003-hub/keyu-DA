# 64) Write a Python function that checks whether a passed string is
# palindrome or not


def check_palindrome(a):

    if a[::-1]==a:
        print("string is palindrome")
    else:
        print(" string Not palindrome")

check_palindrome("iki")            


