
import pandas as pd

df = pd.read_excel("C:/Users/HP/OneDrive/Desktop/Main file.xlsx")
# print(df)

# x = df[["Product","Category","Cost_per_box","PID"]]
# x_1 = x.drop_duplicates(subset=["Product","Category","Cost_per_box","PID"])
# x_2 =x_1.sort_values(by=("PID"))
# print(x_2)


# x1 = df[["Geo","Region","GID"]]
# x2 = x1.drop_duplicates(subset=["Geo", "Region", "GID"])
# print(x2)


# x3 = df[["Sales_person","Team","Picture","SPID"]]
# x3_new = x3.drop_duplicates(subset=["Sales_person","Team","Picture","SPID"])
# print(x3_new)
# x3_new1= x3_new.sort_values(by=("SPID"),ascending=(True))
# print(x3_new1)



# location wise total sales
# x4 = df.groupby(["Region","Geo"])["Amount"].sum()
# print(x4)


#product wise sales and costing
# df["cost"] = df["Cost_per_box"]*df["Boxes"]
# print(df)


# top  5 selling product
# x1 = df.groupby("Product")["Amount"].sum()
# print(x1)
# x2 = x1.reset_index()
# x3 = x2.sort_values(by=("Amount"),ascending=(False))
# print(x3)
# print(x3.head(5))


# # count order status
# y = df.groupby("Order_Status")["Product"].count()
# print(y)





