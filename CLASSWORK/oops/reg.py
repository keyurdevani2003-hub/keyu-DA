import re


#  find only first
# k= re.match("Sun","Sun rise  in east")


# find in all string
# k = re.search("s","sun is rises in east")



# find all string 
# k=re.findall("s","Sun rises in east")



# foind all string position
# k=re.finditer("s","sun is rises in east")
# print(next(k))
# print(next(k))



# change  s to  x
# k= re.sub("s","x","Sun is rises in east")
# print(k)



# k=re.split(" ","Sun rises in east")
# print(k)




# k= re.findall("p.t","hlo python ","pat hello top")
# k=re.search("tops$","hello python,hello tops")
# print(k)
# k=re.search("^hello","hello python , hello tops")
# print(k)



# k=re.search("he*l","hal python,pat heeello tops")

# k= re.search("hk+l","hkkkl python")

# k=re.search("hk?l","hkl python,hello tops")

# print(k)





# k=re.findall("[a-z0-9A-Z]","Hello python hello tops @ 121 Hello world 121 121")
# print(k)



#\d find all digit in string 
# k=re.findall(r"\d","Hello 45 python ,Hello world @121")
# print(k)




# all without number
# k=re.findall(r"\D","Hello 45 python ,Hello world @121")
# print(k)




# no special charector
# k=re.findall(r"\w","Hello pytho ,Hewllo @ tops")
# print(k)



#special character
# k=re.findall(r"\W","Hello pytho ,Hewllo @ tops")
# print(k)

# PRINT ALL
# k= re.findall(r"\S","Hello python hello tops @ 121 hello world 121 121")
# print(k)




# text ="The certificate was issued"
# k=re.search(r"\bued",text)
# print(k)



# k=re.search("\d{,10}","123456786321")
# print(k)









