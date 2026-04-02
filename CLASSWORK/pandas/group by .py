
import pandas as pd



# group by

# data = pd.DataFrame({
#                    "category":["A","A","A","B","B","B","C","C","C"],
#                    "region":["east","west","west","west","west","east","east","west","east"],
#                    "sales":[100,150,200,300,400,500,124,34,154],
#                    "quantity":[1,2,3,4,5,6,7,8,9]
#                     })

# # print(data)

# df = data.groupby("category")["quantity"].mean()
# print(df)


# df2 = data.groupby(["category","sales"])["quantity"].sum()
# print(df2)








# task pandas


df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
# print(df)


# carat > 0.5

df1 = df[df["carat"]>0.5]
# print(df1)


# colour cut wise total price

df2 = df1.groupby(["color","cut"])["price"].sum()
df3 = df2.reset_index()
# print(df3)

# color wise acending  price wise decending

df4 =  df3.sort_values(by=["color","price"],ascending=[True,False])
# print(df3)


df5 = df4[(df4["color"]== "D") | (df4["color"]=="E") | (df4["color"]=="F")]
print(df5)
