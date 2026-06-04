
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv("C:/Users/HP/Downloads/Retail Data.csv")
print(df)


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

cols = ["Cost Price", "Retail Price", "Profit Margin",
        "Sub Total", "Discount $", "Order Total",
        "Shipping Cost", "Total"]

for col in cols:
    df[col] = pd.to_numeric(df[col].str.replace("[$,]", "", regex=True), errors="coerce")
print(df)    



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
# x=df[["Retail Price","Cost Price","Retail Price","Profit Margin","Sub Total","Discount %","Discount $","Shipping Cost","Total"]].describe()
# print(x)



# 12. Create a new column for shipping duration.
# df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
# df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")
# df["ship_duration"] = (df["Ship Date"] - df["Order Date"]).dt.days
# df["ship_duration"].fillna(0, inplace=True)
# print(df)



# 13. Are there any orders with zero or negative total or quantity?
# x = df[(df["Total"] <= 0) | (df["Order Quantity"] <= 0)]
# print(x)
# no there are not any orders with zero or negative total or quantity



# 14. Are all discount percentages matching discount dollar amounts?
# df["Discount %"] = df["Discount %"].astype(str).str.replace("%", "")
# df["Discount %"] = pd.to_numeric(df["Discount %"], errors="coerce")
# df["Sub Total"] = pd.to_numeric(df["Sub Total"], errors="coerce")
# df["Discount $"] = pd.to_numeric(df["Discount $"], errors="coerce")

# df["calc_discount"] = (df["Sub Total"] * df["Discount %"]) / 100

# matched = df[abs(df["calc_discount"] - df["Discount $"]) < 0.01]

# print("Matching rows:", len(matched))
# print("Total rows:", len(df))



# 15. Check for mismatches in total calculation’

# df["calc_total"] = df["Sub Total"] - df["Discount $"] + df["Shipping Cost"]

# mismatch = df[abs(df["calc_total"] - df["Total"]) > 0.01]

# print("Mismatch rows:", len(mismatch))
# print(mismatch)




# 16. Identify top 5 products by order quantity
# x = df.groupby("Product Name")["Order Quantity"].sum().reset_index().sort_values(by="Order Quantity",ascending=False).head(5)
# print(x)



# 17. Which Account Manager handled the most revenue?
# x = df.groupby("Account Manager")["Total"].max().reset_index().sort_values(by="Total",ascending=False).head(1)
# print("most revenue handeled manager : ",x)



# 18. What is the average shipping cost by mode?
# x = df.groupby("Ship Mode")["Shipping Cost"].mean()
# print(x)



# 19. Find the most profitable product.
# x = df.groupby("Product Name")["Profit Margin"].max().reset_index().sort_values(by="Profit Margin",ascending=False).head(1)
# print("highest profitable product",x)



# 20. Find the most profitable product.
# x = df.groupby("Product Name")["Profit Margin"].max().reset_index().sort_values(by="Profit Margin",ascending=False).head(1)
# print("highest profitable product",x)




# insightts analysis questions

# 1. What is the total revenue generated across all orders?
# x= df.groupby("Order No")["Total"].sum()
# print(x)


# 2. Which customer type generates more revenue?
# x = df.groupby("Customer Type")["Total"].sum().reset_index().sort_values(by="Total",ascending=False).head(2)
# print(x)


# 3. How does order priority affect revenue?
# x= df.groupby("Order Priority")["Total"].sum().reset_index()
# print(x)
# sns.barplot(data=x,x="Order Priority",y="Total")
# plt.show()
# print("at order prority high and not satisfied has a more revenue")



# 4. What is the average profit margin by product category?
# x = df.groupby("Product Name")["Profit Margin"].mean().reset_index()
# print(x)



# 5. What is the most profitable product overall?
# x = df.groupby("Product Name")["Profit Margin"].max().reset_index().sort_values(by="Profit Margin",ascending=False).head(1)
# print("highest profitable product",x)



# 6. How many days does it usually take to ship an order?
df["Order Date"] = pd.to_datetime(df["Order Date"], dayfirst=True)
df["Ship Date"] = pd.to_datetime(df["Ship Date"], dayfirst=True)

df["Shipping Time"] = df["Ship Date"] - df["Order Date"]
x = df["Shipping Time"].mean()
print("days of shipping",x)


# 7. Do longer shipping times impact profit margins?
# df["Shipping Category"] = np.where(df["Shipping Time"] > x, "Long", "Short")
# print(df)

# x1=df.groupby("Shipping Category")["Profit Margin"].mean()
# print("long shipping time has slighty margin of profit",x1)



# 8. Which city brings in the highest revenue?





