def test():
    try :
        a = int(input("enter number : "))
        return a
    except Exception as e:
        return e
    finally:
        print("test function ended")

k = test()
print(k)



