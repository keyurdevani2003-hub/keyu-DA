

from datetime import datetime
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_excel("C:/Users/HP/Downloads/Amazon_Product_Analysis_Dataset.xlsx")
print(df)


# x=df.isnull().sum()
# print(x)

# print(df.describe())

# x = df.duplicated().sum()
# print(x)


# print(df.info())


# x = df.groupby(["category","sub_category"])["actual_price"].mean().reset_index().sort_values(by="actual_price",ascending=False)
# print(x)

# sns.barplot(data=x,x = "category",y="actual_price",hue="sub_category")
# plt.show()



# x = df.groupby(["category","sub_category"])["discounted_price"].mean().reset_index().sort_values(by="discounted_price",ascending=False)
# print(x)
# sns.barplot(data=x,x = "category",y="discounted_price",hue="sub_category")
# plt.show()




# x = df.groupby(["category","sub_category"])["discount_percentage"].mean().reset_index().sort_values(by="discount_percentage",ascending=False)
# print(x)
# sns.barplot(data=x,x = "category",y="discount_percentage",hue="sub_category")
# plt.show()



# x = df.groupby("category")["rating"].mean().reset_index().sort_values(by="rating",ascending=False)
# print(x)
# sns.barplot(data=x,x = "category",y="rating")
# plt.show()



# x = df.groupby("sub_category")["rating"].mean().reset_index().sort_values(by="rating",ascending=False)
# print(x)
# sns.barplot(data=x,x = "sub_category",y="rating")
# plt.show()




# Category wise total rating count
# rating_category = df.groupby("category")["rating_count"].sum().sort_values(ascending=False)

# plt.figure(figsize=(8,5))
# plt.bar(rating_category.index, rating_category.values)

# plt.title("Category Wise Rating Count", fontsize=15)
# plt.xlabel("Category")
# plt.ylabel("Rating Count")

# plt.xticks(rotation=45)
# plt.grid(axis='y', linestyle='--', alpha=0.5)

# plt.tight_layout()
# plt.show()



# # Category wise total review count
# review_category = df.groupby("category")["review_count"].sum().sort_values(ascending=False)

# plt.figure(figsize=(8,5))
# plt.bar(review_category.index, review_category.values)

# plt.title("Category Wise Review Count", fontsize=15)
# plt.xlabel("Category")
# plt.ylabel("Review Count")

# plt.xticks(rotation=45)
# plt.grid(axis='y', linestyle='--', alpha=0.5)

# plt.tight_layout()
# plt.show()



# category_dist = df["category"].value_counts()

# plt.figure(figsize=(7,7))

# plt.pie(  
#     category_dist,
#     labels=category_dist.index,
#     autopct='%1.1f%%',
#     startangle=90,
#     shadow=True
# )

# plt.title("Category Distribution")
# plt.show()



# corr_matrix = df.select_dtypes(include='number').corr()

# plt.figure(figsize=(10,8))
# sns.heatmap(corr_matrix,
#             annot=True,
#             cmap="coolwarm",
#             fmt=".2f",
#             linewidths=0.5)

# plt.title("Correlation Matrix")
# plt.show()
