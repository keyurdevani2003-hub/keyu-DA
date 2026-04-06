
import pandas as pd



# merged 

# df1 = pd.DataFrame({
#     "Id":[1,2,3],
#     "Name":["Alice","Bob","charli"]})
# # print(df1)

# df2 = pd.DataFrame({
#     'Id':[2,3,4],
#     "Score":[85,90,88]
# })


# merged = pd.merge(df1,df2,on='Id',how="left")
# print(merged)





# join 


df1 = pd.DataFrame({ 'Name': ["Alice","Bob","Charli"]},index=[1,2,3])
df2 = pd.DataFrame({'Score': [85,90,88]},index=[2,3,4])
join = df1.join(df2,how="right")
print(join)


