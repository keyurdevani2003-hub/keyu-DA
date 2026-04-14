import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns





# category wise comparision  dikana ho tab bar chart ya column chart
# date or time wise trend batana ho to line chart area chart
#single column ka bifercation show karna ho to pi chart donate chart
# more than one colunms ka bofercation ke liye sun bust chart  ya tree map chart
#geographical data hai tab  use map chart me dikha sakte hai
# do numerical column ka relation dikhana ho scatter plot 
# outlier ditact ke liye box plot
#frequency dikha ne ke liye histogram ya kde plot
# funnel chart








df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
print(df)


# x = df.groupby("cut")["price"].sum()
# print(x)
# y1= x.reset_index()
# print(y1)


# plt.figure(figsize=(10,5))
# plt.plot(y["cut"],y["price"],markers ="0",color="red",linestyle= "--")
# plt.title("cut wise sales")
# plt.xlabel("cut")
# plt.ylabel("price")
# plt.grid(True)
# plt.show()




# sns.lineplot(data = y1,x="cut",y="price",markers="0",color="green")
# plt.title("cut wise price")
# plt.grid(True)
# plt.show()



# scatter chart
# x1 = df.groupby('carat')["price"].mean()
# x2 = x1.reset_index()
# print(x2)


# plt.scatter(x2['carat'],x2["price"],alpha=0.3)
# plt.show()
# sns.scatterplot(data=x2,x="carat",y="price",alpha=0.5,color="purple")
# plt.show()



# bar chart
# plt.bar(y1["cut"],y1["price"])
# plt.show()

# sns.barplot(data=y1,x="cut",y="price")
# plt.show()



# cluster bar
# k = df.groupby(["clarity","cut"])["price"].sum()
# k1 = k.reset_index()
# print(k1)
# sns.barplot(data=k1,x="cut",y="price",hue="clarity")
# plt.show()


# histogram chart  count the columns value or frequency
# plt.hist(df["price"],bins=50,color="skyblue")
# plt.show()

# sns.histplot(data=df["price"])
# plt.show()



# gives probablity 
# sns.kdeplot(data=df["price"])
# sns.histplot(data=df["price"],kde=True)
# plt.show()


#  boxplot for finding outlier 
# sns.boxplot(data=df["price"])
sns.boxplot(data=df,x="cut",y="price",hue="cut")
plt.show()



# violine plot mix chart of boxplot  kdfplot
# sns.violinplot(x="clarity",y="price",data=df)
# plt.show()



# stack bar chart

# using seaborn
import seaborn.objects as so
# so.Plot(k1,x="clarity",y="price",color="cut").add(so.Bar()).scale(color="Set2").show()


# using matplotlib
# x = ["A","B","C","D"]
# y1 = [10,20,30,45]
# y2 = [25,45,12,28]
# y3 = [12,35,14,18]

# y4 = np.add(y1,y2).tolist()
# print(y4)

# plt.bar(x,y1,color="red")
# plt.bar(x,y2,bottom=y1,color="blue")
# plt.bar(x,y3,bottom=y4,color="green")  

# plt.show()





# pi chart
# clarity_c = df["cut"].value_counts()
# print(clarity_c)

# import matplotlib.pyplot as plt

# plt.pie(clarity_c.values,
#         labels=clarity_c.index,
#         autopct="%1.1f%%")

# plt.title("Cut Distribution")
# plt.show()





df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
print(df)


# df1 = df.groupby(["clarity","cut"])["price"].sum().unstack()
# print(df1)

# count karne ke liye
# df2 = pd.crosstab(df["cut"],df["color"])
# print(df2)


#pivoit table
# df3 = pd.pivot_table(df,values="price",index="clarity",columns = ["color"],aggfunc="mean")
# print(df3)

# heatmap chart for correlation with columns  and min maximum ke liye 
# plt.figure(figsize=(10,5))
# sns.heatmap(df3,cmap="coolwarm",annot=True,fmt="02f",linewidths=10)
# plt.show()




# pairplot for multi  columns scatterplot
# sns.pairplot(df,vars=["carat","depth","table","price"],palette="Set2",hue="cut")
# plt.show()


# join plot combine of scatterplot and kdfplot
# sns.jointplot(data=df,x="depth",y="table",kind="kde",hue="cut")
# plt.show()


