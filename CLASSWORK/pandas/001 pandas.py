import pandas as pd
# import numpy as np


# Series  

# s1 = pd.Series([1,2,3,4,5])
# print(s1)


# s = pd.Series([1,2,3,np.nan,6,pd.NaT,None])
# print(s)


# s2 = pd.Series({2:"a",1:"b",3:"c"},index = [3,1])
# print(s2)


# s3 = pd.Series({2:"a",1:"b",3:"c"},index = [22,1])
# print(s3)



# s4 = pd.Series([10,12],index=[0,1])
# print(s4)

# s5 = pd.Series([10,12],index=[100,111])
# print(s5)


# s6 = pd.Series(5,index=[100,200,300])
# print(s6)







# data frame:


# df = pd.DataFrame({"name":["ajay","vijay","keyu"],"bz":[4,5,6],"cd":[7,8,9]})
# print(df)


# df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
# print(df)


df2= pd.read_csv("C:/Users/HP/OneDrive/Desktop/superstore.csv",encoding='latin-1')
# print(df2)


# df.to_json("C:/Users/HP/OneDrive/Desktop/d.json")


# print(df.head(3))
# print(df.tail)
# print(df.info())
# print(df.describe())
# print(df.shape)
# print(df.columns)
# print(df.dtypes)


# del column only show not change orignal data
# print(df2.drop(columns=["Order ID"]))



# del columns original data
# print(df2.drop(columns=["Order ID"],inplace=True))


# del columns by axis
# print(df2.drop(["Order ID"],axis=1))


