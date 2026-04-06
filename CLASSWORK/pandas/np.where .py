
import pandas as pd
import numpy as np


df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
# print(df)

# df["New"]= np.where(df['cut']=="Ideal","Yes","No")
# df["New_Price"] = np.where(df["cut"]=='Ideal',df["price"]*2,df["price"])
# df["New_Price_1"]=np.where((df["cut"]=="Ideal")|(df["cut"]=="Premium"),df["price"]*2,df["price"])
# df["new_2"] = np.where(df["color"].isin(["D","E",'F']),'Yes',"No")

# print(df)




# df["depth_group"] = np.where(df["depth"]<=60,"less than 60",
#                     np.where(df["depth"]<65,"60-65",
#                     np.where(df["depth"]<70,"65-70","more than 70")))


# print(df)

