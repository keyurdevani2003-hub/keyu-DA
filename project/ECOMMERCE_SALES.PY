



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


# x = df.groupby("Product")["Price"].mean()
# print(x)


# x = df.groupby("Category")["Price"].mean()
# print(x)
