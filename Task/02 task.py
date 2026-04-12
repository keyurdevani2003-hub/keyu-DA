import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/weather_classification_data.csv",encoding='latin-1')
print(df)


# konse weather type ke kitne record hai

# plt.hist(df["Weather Type"],bins=10,color="skyblue")
# plt.show()

# x = df["Weather Type"].reset_index()
# x3 = x.drop_duplicates(subset=["Weather Type"])
# print(x3)
# x1 = x.groupby("Weather Type")["index"].count()
# print(x1)





#location wise highest temprature comparision

# x = df.groupby("Location")["Temperature"].max().reset_index()
# print(x)

# plt.bar(x["Location"], x["Temperature"]) 
# plt.show()





#temprature and wind spped ki frequency

plt.hist(df["Temperature"],color = "blue")
# plt.hist(df["Wind Speed"],color="red")
plt.show()

# x = df["Temperature"].reset_index()
# print(x)
# x1 = x.groupby("Temperature").count().reset_index()
# print(x1)


#season wise locaton wise avg atmosphere  kya hai

# x = df.groupby(["Season","Location"])["Atmospheric Pressure"].mean().reset_index()

# print(x)

# sns.barplot(data=x,x = "Location",y="Atmospheric Pressure",hue="Season")
# plt.show()



#humidity ki density janni hai,humidity mai outliyers hai ya nahi janna hai

# sns.kdeplot(data=df["Humidity"])
# sns.boxplot(data=df["Humidity"])
# plt.show()




#uv index and temprature ka relation janana hai


# x  =  df.groupby("UV Index")["Temperature"].mean().reset_index()
# plt.plot(x['UV Index'],x["Temperature"])
# plt.show()

