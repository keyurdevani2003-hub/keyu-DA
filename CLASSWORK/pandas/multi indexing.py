import pandas as pd


# multiindexing series


# index1 = [("california",2010),("california",2011),("new yourk",2010),("new york",2011),("texas",2010),("texas",2011)]
# population = [154644,65464564,4654656,1654654,468615,4654656]

# x = pd.Series(population,name="population",index = index1)
# print(x)



# index2 = [("a",1),("a",2),("a",3),("b",1),("b",2),("c",1)]
# marks = [45,60,8,0,45,45]

# x2 = pd.Series(marks,name="marks",index=index2)

# print(x2)




# multi indexing data frame



# abc = [["A","A","A","B","B","B"],[1,2,3,1,2,3]]
# abc = [("a",1),("a",2),("a",3),("b",1),("b",2),("c",1)]
# # abc = [["A","B","C"],[1,2,3]]

# index3 = pd.MultiIndex.from_tuples(abc,names=("class","roll no"))
# df = pd.DataFrame({"marks" : [10,20,30,40,50,60]},index=index3)
# print(df)






# drop level for index delete  

# df = df.droplevel("roll no")
# print(df)





# reset index old index becomes columns give standard index
# df1 = df.reset_index()
# print(df1)







# transpose columns and raw name change
# df2 = df1.transpose()
# print(df2)

# df3 = df1.T
# print(df3)

