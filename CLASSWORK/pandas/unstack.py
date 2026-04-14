
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
print(df)


# df1 = df.groupby(["cut","clarity"])["price"].count().unstack()
# print(df1)

# count karne ke liye
# df2 = pd.crosstab(df["cut"],df["color"])
# print(df2)


#pivoit table
# df3 = pd.pivot_table(df,values="price",index="clarity",columns = ["color"],aggfunc="mean")
# print(df3)

# heatmap chart for correlation with columns  and min maximum ke liye 
# plt.figure(figsize=(10,5))
# sns.heatmap(df1,cmap="coolwarm",annot=True,fmt="d",linewidths=10)
# plt.show()




# pairplot for multi  columns scatterplot
# sns.pairplot(df,vars=["carat","depth","table","price"],palette="Set2",hue="cut")
# plt.show()


# join plot combine of scatterplot and kdfplot
# sns.jointplot(data=df,x="depth",y="table",kind="kde",hue="cut")
# plt.show()

