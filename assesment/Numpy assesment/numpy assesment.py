 NumPy, Pandas, Matplotlib & Seaborn


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

sns.set_theme(style="whitegrid")



# ASSESSMENT 1 - BANKLIST.CSV

bank_url = "https://raw.githubusercontent.com/TopsCode/Data_Analysis_2024/main/ALL_CSV/banklist.csv"

banks = pd.read_csv(bank_url)

# 1) Import pandas and read banklist.csv into dataframe called banks
print("1) DataFrame created: banks")

# 2) Show the head of the dataframe
print("\n2) Head of dataframe:")
print(banks.head())

# 3) What are the column names?
print("\n3) Column names:")
print(banks.columns.tolist())

# 4) How many States (ST) are represented?
print("\n4) Number of states represented:")
print(banks["ST"].nunique())

# 5) Get a list/array of all states
print("\n5) All states:")
print(banks["ST"].unique())

# 6) Top 5 states with the most failed banks
top_5_states = banks["ST"].value_counts().head(5)
print("\n6) Top 5 states with the most failed banks:")
print(top_5_states)

# 7) Top 5 acquiring institutions
top_5_acquirers = banks["Acquiring Institution"].value_counts().head(5)
print("\n7) Top 5 acquiring institutions:")
print(top_5_acquirers)

# 8) How many banks has State Bank of Texas acquired?
#    How many of those were actually in Texas?
state_bank_of_texas = banks[
    banks["Acquiring Institution"].str.strip().str.lower()
    == "state bank of texas"
]

print("\n8) State Bank of Texas acquisitions:")
print("Total banks acquired:", len(state_bank_of_texas))
print("Banks that were actually in Texas:", 
      (state_bank_of_texas["ST"].str.upper() == "TX").sum())

# 9) Most common city in California for a bank to fail in
california_banks = banks[banks["ST"].str.upper() == "CA"]
most_common_ca_city = california_banks["City"].value_counts().head(1)

print("\n9) Most common city in California for a bank failure:")
print(most_common_ca_city)


# ASSESSMENT 2 - HISTORICAL AUTOMOBILE SALE


auto_url = "https://raw.githubusercontent.com/TopsCode/Data_Analysis_2024/main/ALL_CSV/historical_automobile_sales.csv"

df = pd.read_csv(auto_url)

print("\n\n" + "=" * 70)
print("ASSESSMENT 2 - HISTORICAL AUTOMOBILE SALES")
print("=" * 70)

print("\nDataset head:")
print(df.head())

print("\nColumns:")
print(df.columns.tolist())


# Q1) Line chart using pandas showing automobile sales year to year
yearly_sales = df.groupby("Year")["Automobile_Sales"].sum()

print("\nQ1) Yearly automobile sales:")
print(yearly_sales)

ax = yearly_sales.plot(
    kind="line",
    figsize=(10, 5),
    marker="o",
    title="Automobile Sales by Year"
)
ax.set_xlabel("Year")
ax.set_ylabel("Automobile Sales")
plt.tight_layout()
plt.show()


# Q2) Plot different lines for vehicle types and analyze trend
vehicle_sales_yearly = (
    df.groupby(["Year", "Vehicle_Type"])["Automobile_Sales"]
      .sum()
      .reset_index()
)

plt.figure(figsize=(12, 6))
sns.lineplot(
    data=vehicle_sales_yearly,
    x="Year",
    y="Automobile_Sales",
    hue="Vehicle_Type",
    marker="o"
)
plt.title("Automobile Sales Trend by Vehicle Type")
plt.xlabel("Year")
plt.ylabel("Automobile Sales")
plt.legend(title="Vehicle Type", bbox_to_anchor=(1.05, 1), loc="upper left")
plt.tight_layout()
plt.show()

print("""
Q2) Analysis:
During recession periods, automobile sales generally decline compared
with non-recession periods. The size of the decline can differ by vehicle
type, so the lines should be compared around the recession years.
""")


# Q3) Seaborn visualization comparing sales trend per vehicle type
#     for recession vs non-recession period
recession_trend = (
    df.groupby(["Recession", "Vehicle_Type"])["Automobile_Sales"]
      .mean()
      .reset_index()
)

plt.figure(figsize=(12, 6))
sns.lineplot(
    data=recession_trend,
    x="Vehicle_Type",
    y="Automobile_Sales",
    hue="Recession",
    marker="o"
)
plt.title("Average Automobile Sales by Vehicle Type: Recession vs Non-Recession")
plt.xlabel("Vehicle Type")
plt.ylabel("Average Automobile Sales")
plt.tight_layout()
plt.show()


# Q4) Compare sales of different vehicle types during recession
#     and non-recession periods using a bar chart.
plt.figure(figsize=(12, 6))
sns.barplot(
    data=recession_trend,
    x="Vehicle_Type",
    y="Automobile_Sales",
    hue="Recession"
)
plt.title("Average Automobile Sales: Recession vs Non-Recession")
plt.xlabel("Vehicle Type")
plt.ylabel("Average Automobile Sales")
plt.tight_layout()
plt.show()


# Optional numerical comparison for Q4
comparison = (
    df.groupby(["Recession", "Vehicle_Type"])["Automobile_Sales"]
      .mean()
      .unstack(0)
)

print("\nQ4) Average sales comparison:")
print(comparison)

print("""
Q4) Analysis:
The bar chart makes it easy to compare the average sales of each vehicle
type between recession and non-recession periods. In general, recession
periods show lower average automobile sales, although the impact varies
by vehicle type.
""")
