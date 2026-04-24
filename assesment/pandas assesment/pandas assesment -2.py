
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv("C:/Users/HP/Downloads/Retail Data.csv")
# print(df)


# Q1. View the structure of the dataset (columns, types, missing
# values)
df.info()
df.describe(include="all")



# Q2. What is the shape (rows, columns) of the dataset?
df.shape



# Q3. Are there any duplicate records?
df.duplicated().sum()
df.drop_duplicates(inplace=True)



# Q4. Are there any missing or corrupted entries in Ship Date, Order
# Date, or numeric columns?
df.isnull().sum()
df[["Order Date","Ship Date"]].isnull().sum()
df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")
df.select_dtypes(include=["number"]).isnull().sum()



# 5.Convert Order Date and Ship Date to datetime.
df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")
print(df)




