



from datetime import datetime
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

np.random.seed(42)

n = 100000

dates = pd.date_range(start="2023-01-01", periods=730)
categories = ["Electronics", "Clothing", "Home", "Books", "Grocery"]
products = {
    "Electronics": ["Phone", "Laptop", "Headphones", "Smartwatch"],
    "Clothing": ["Shirt", "Jeans", "Jacket", "T-shirt"],
    "Home": ["Mixer", "Chair", "Lamp", "Table"],
    "Books": ["Novel", "Comics", "Biography", "Science"],
    "Grocery": ["Rice", "Oil", "Milk", "Snacks"]
}
cities = ["Ahmedabad", "Surat", "Mumbai", "Delhi", "Pune", "Bangalore"]

data = []

for i in range(n):
    cat = np.random.choice(categories)
    product = np.random.choice(products[cat])
    price = np.random.randint(100, 50000)
    qty = np.random.randint(1, 5)
    discount = np.random.randint(0, 30)
    
    data.append([
        i+1,
        np.random.choice(dates),
        cat,
        product,
        price,
        qty,
        discount,
        f"CUST{np.random.randint(1000,9999)}",
        np.random.choice(cities)
    ])

df = pd.DataFrame(data, columns=[
    "OrderID","Date","Category","Product","Price","Quantity","Discount","CustomerID","City"
])



file_path = "ecommerce_large_dataset.csv"
# df.to_csv(file_path, index=False)


df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/Tops/ecommerce_large_dataset.csv")
# print(df)


# print(df.isnull().sum())


# x = df.describe()
# print(x)


# sns.boxplot(data=df["Quantity"])
# plt.show()


# sns.boxplot(data=df["Discount"])
# plt.show()


# sns.boxplot(data=df["Price"])
# plt.show()
# sns.boxplot(data=df,x = "City",y="Price")
# plt.show()
# sns.boxplot(data=df,x = "Category",y="Price")
# plt.show()



# a = df.groupby(["Category","Product"])["Quantity"].agg(["sum","mean","max","min"]).reset_index()
# print(a)
# sns.barplot(data=a,x="Category",y="sum",hue="Product",palette="Set2")
# plt.show()
# sns.barplot(data=a,x="Category",y="mean",hue="Product",palette="Set2")
# plt.show()



# a = df.groupby(["Category","Product"])["Discount"].agg(["sum","mean","max","min"]).reset_index()
# print(a)
# sns.barplot(data=a,x="Category",y="sum",hue="Product",palette="Set2")
# plt.show()
# sns.barplot(data=a,x="Category",y="mean",hue="Product",palette="Set3")
# plt.show()



df["Sales"] = df["Price"]*df["Quantity"]-(df["Discount"]*(df["Price"]*df["Quantity"])/100)
print(df)


# d = df.groupby(["City","Category"])["Sales"].agg(["mean","sum"]).reset_index()
# print(d)

# d = df.groupby(["City","Product"])["Sales"].agg(["mean","sum"]).reset_index()
# print(d)

# d = df.groupby("City")["Sales"].agg(["mean","sum"]).reset_index()
# print(d)



# a = df.groupby(["Category","Product"])["Sales"].agg(["mean","sum"]).reset_index()
# print(a)
# sns.barplot(data=a,x="Category",y="mean",hue="Product",palette="Set3")
# plt.show()
# sns.barplot(data=a,x="Category",y="sum",hue="Product",palette="Set3")
# plt.show()





from datetime import datetime
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(
    "C:/Users/HP/OneDrive/Desktop/Tops/ecommerce_large_dataset.csv"
)


df["Date"] = pd.to_datetime(df["Date"], errors="coerce")


print("Invalid Dates:", df["Date"].isna().sum())

df["Year"] = df["Date"].dt.year
df["Month"] = df["Date"].dt.month_name()
df["Month_No"] = df["Date"].dt.month
df["Quarter"] = df["Date"].dt.quarter
df["Day"] = df["Date"].dt.day_name()

df["Sales"] = (
    df["Price"] *
    df["Quantity"] *
    (1 - df["Discount"] / 100)
)
print(df.dtypes)

print(df.head())
monthly_sales = (
    df.groupby("Month_No")["Sales"]
      .sum()
      .reset_index()
)

plt.figure(figsize=(10,5))
sns.lineplot(data=monthly_sales, x="Month_No", y="Sales", marker="o")
plt.title("Monthly Sales")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.show()




category_sales = (
    df.groupby("Category")["Sales"]
      .sum()
      .reset_index()
)

plt.figure(figsize=(8,5))
sns.barplot(data=category_sales, x="Category", y="Sales", palette="Set2")
plt.title("Category-wise Sales")
plt.xticks(rotation=20)
plt.show()



plt.figure(figsize=(6,4))
sns.heatmap(
    df[["Price","Quantity","Discount","Sales"]].corr(),
    annot=True,
    cmap="Blues"
)
plt.title("Correlation Matrix")
plt.show()





