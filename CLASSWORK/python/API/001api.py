
import requests



data = requests.get("https://dummyjson.com/products")


result = data.json()



for i in result:
    
