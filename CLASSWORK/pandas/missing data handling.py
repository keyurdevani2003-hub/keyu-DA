

import pandas as pd
import numpy as np

#missing data handling

# df = pd.DataFrame({"name":["aifread","batman","catwoman"],
#                   "toy": [pd.NaT,"batmobile","bullwhip"],
#                   "born":[pd.NaT,pd.Timestamp("1940-04-25"),None]})

# print(df)
# df1 = df.dropna()
# print(df1)



# fillna

df2 = pd.DataFrame([[np.nan,2,np.nan,0],
                   [3,4,np.nan,1],
                   [np.nan,np.nan,np.nan,np.nan],
                    [np.nan,3,np.nan,4]],
                   columns=["A","B","C","D"])

# print(df2)
# df3=df2.fillna(1)
# print(df3)

df2["A"]= df2["A"].fillna(df2["A"].mean())
df2["C"]= df2["C"].fillna("-")
print(df2)

