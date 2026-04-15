import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


df = pd.read_csv("C:/Users/HP/Downloads/finance_economics_dataset.csv")
# print(df)




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




# 7. What is the summary of GDP Growth (%)?

# x = df["GDP Growth (%)"].mean()
# print(x)

# x = df["GDP Growth (%)"].min()
# print(x)

# x = df["GDP Growth (%)"].max()
# print(x)



# 8. Are there rows with zero or near-zero trading volume?
# no data raw is available with zero and near zero
# x = df[df["Trading Volume"]==0]
# print(x)



# 9. Are there any duplicate rows?
# no there are not duplicate columns are available
# x = df[df.duplicated()]
# print(x)




# 10. Are there outliers in GDP, Gold, or Oil prices?
# sns.boxplot(data=[df["GDP Growth (%)"],df["Gold Price (USD per Ounce)"],df["Crude Oil Price (USD per Barrel)"]])
# plt.show()




# 11. What is the summary of Inflation Rate (%)?
# sns.boxplot(data=df["Inflation Rate (%)"])
# plt.show()



# 12. What is the average unemployment rate?
# 8.66
# x = df["Unemployment Rate (%)"].mean()
# print(x)



# 13. Which index has the highest trading volume?
# x = df.groupby("Stock Index")["Trading Volume"].max().reset_index().sort_values(by="Trading Volume",ascending=False).head(1)
# print(" Highest trading volume is : ",x)



# 14. How many stock records are from each index?
# x = df["Stock Index"].reset_index()
# print(x)
# y = x.groupby("Stock Index").count()
# print(y)



# # 15. What is the correlation between inflation and interest rate?
# corr = df["Inflation Rate (%)"].corr(df["Interest Rate (%)"])
# print(corr)
# x = df[["Inflation Rate (%)","Interest Rate (%)"]]
# print(x)
# sns.heatmap(x.corr(), annot=True, cmap="coolwarm")
# plt.show()



# 16. What is the average Consumer Confidence Index?
# x = df["Consumer Confidence Index"].mean()
# print(x)




# 17. Which column has the highest standard deviation?
# std_values = df.std(numeric_only=True)
# print(std_values.idxmax(), std_values.max())



