import pandas as pd


# conditional base FILERING DATA a data 

df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
# print(df)

# sel_raw = df[(df["table"]>=61)&(df['cut']=="Ideal")]
# print(sel_raw)



# loc and iloc
show = df.iloc[100:105,0:3]
print(show)

show2 = df.loc[100:106:2,["cut","carat"]]
print(show2)





# new raw add
df["new_price"]=df["price"]+(df["price"]*0.2)
print(df)



