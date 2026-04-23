

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


df =  pd.read_csv("C:/Users/HP/OneDrive/Desktop/marketing_campaign_performance_10000.csv")
print(df)


# x = df.groupby("Channel")[["Clicks","Leads","Conversions"]].mean().reset_index()
# print(x)


# plt.plot(x["Channel"],x["Clicks"])
# plt.xlabel("Channel")
# plt.ylabel("Clicks")
# plt.title("channel vs clicks")
# plt.show()



# plt.plot(x["Channel"],x["Leads"])
# plt.xlabel("Channel")
# plt.ylabel("Leads")
# plt.title("channel vs Leads")
# plt.show()




# plt.plot(x["Channel"],x["Conversions"])
# plt.xlabel("Channel")
# plt.ylabel("Conversions")
# plt.title("channel vs Conversions")
# plt.show()



# clarity_c = df["Channel"].value_counts()
# print(clarity_c)



# plt.pie(clarity_c.values,
#         labels=clarity_c.index,
#         autopct="%1.1f%%")

# plt.show()





# x = df.groupby("Channel")[["Revenue_USD","Cost_USD","ROI"]].mean()
# print(x)





# x = df[["Revenue_USD","Cost_USD"]]
# sns.heatmap(x.corr(),cmap="coolwarm",annot=True)
# plt.show()
# strong positive correlation 




# x = df[["Revenue_USD","ROI"]]
# sns.heatmap(x.corr(),cmap="coolwarm",annot=True)
# plt.show()




# sns.pairplot(df,vars=["Clicks","Leads","Conversions"],palette="Set2",hue="ROI")
# plt.show()


# clarity_c = df["Channel"].value_counts()
# print(clarity_c)



# plt.pie(clarity_c.values,
#         labels=clarity_c.index,
#         autopct="%1.1f%%")

# plt.show()