import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


df = pd.read_csv("C:/Users/HP/Downloads/finance_economics_dataset.csv")
print(df)




# 3. How many unique stock indices are there?
# unique_count = df["Stock Index"].nunique()
# print(unique_count)




# # 4. What is the date range of the dataset?
# df["Date"] = pd.to_datetime(df["Date"])
# start_date = df["Date"].min()
# end_date = df["Date"].max()
# date_range = end_date - start_date
# print("Start Date:", start_date)
# print("End Date:", end_date)
# print("Total Duration:", date_range)




# 5. Are there any missing values?
# print(df.isnull().values.any())
# no 




# 6. Are there negative values in columns that should be non-negative?
# Select only numeric columns
# numeric_cols = df.select_dtypes(include="number")

# # Check if any negative value exists
# has_negative = (numeric_cols < 0).any().any()

# print("Negative values present:", has_negative)
# print((numeric_cols < 0).sum())

