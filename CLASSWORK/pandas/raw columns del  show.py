import pandas as pd






df2= pd.read_csv("C:/Users/HP/OneDrive/Desktop/superstore.csv",encoding='latin-1')
# print(df2)


# del column only show not change orignal data
# print(df2.drop(columns=["Order ID"]))



# del columns original data
# print(df2.drop(columns=["Order ID"],inplace=True))


# del columns by axis
# print(df2.drop(["Order ID"],axis=1))



# raw del 
# df2.drop([0,1,2,3],axis=0,inplace = True)

# print(df2)







