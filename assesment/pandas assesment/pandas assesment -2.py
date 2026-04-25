
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv("C:/Users/HP/Downloads/Retail Data.csv")
# print(df)


# Q1. View the structure of the dataset (columns, types, missing
# # values)
# df.info()
# df.describe(include="all")



# # Q2. What is the shape (rows, columns) of the dataset?
# df.shape



# # Q3. Are there any duplicate records?
# df.duplicated().sum()
# df.drop_duplicates(inplace=True)



# # Q4. Are there any missing or corrupted entries in Ship Date, Order
# # Date, or numeric columns?
# df.isnull().sum()
# df[["Order Date","Ship Date"]].isnull().sum()
# df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
# df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")
# df.select_dtypes(include=["number"]).isnull().sum()



# # 5.Convert Order Date and Ship Date to datetime.
# df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
# df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")
# print(df)




# 6. Check for future or inconsistent shipping dates.




# 7. Convert price columns to numeric (remove $ and commas).

# cols = ["Cost Price", "Retail Price", "Profit Margin",
#         "Sub Total", "Discount $", "Order Total",
#         "Shipping Cost", "Total"]

# for col in cols:
#     df[col] = pd.to_numeric(df[col].str.replace("[$,]", "", regex=True), errors="coerce")
# print(df)    



# 8. What are the unique values in Customer Type and Order Priority?
# x =  df["Customer Type"].unique()
# print(x)
# ['Small Business', 'Corporate', 'Consumer', 'Home Office']



# 9. What are the most common shipping modes?
# x = df.groupby("Ship Mode").count()
# print(x)
# Most common shipping mode is air


# 10. Which cities have the highest number of orders?
# x = df.groupby("City")["Order No"].count()
# print(x)
# melborn has highest number of orders


# 11. What’s the range of order quantities and prices?
sns.boxplot(data=[df["Order Quantity"],df[""]])
