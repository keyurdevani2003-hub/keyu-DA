
import pandas as pd



df = pd.read_csv("C:/Users/HP/OneDrive/Desktop/diamonds.csv")
print(df)


# describe gives a columns  mean,max,min,25%,75%,100%,std
x= df["depth"].describe()
print(x)