

db = { }
time= [10,11,12,1,2,3]
c = "y"

while c != "n" :

    choice = int(input("""*** enter your choice 
                       
                1: booking appoinment
                2: cancel appoinment
                3 : view all apoinment         
                    

                       
                       
                       """))


    if choice ==1:
        print("booking appoinment")
        name = input("Enter your name : ") 
        phone = int(input("Enter your phone number : "))
        dr = input("enter docter name : ")
        slot  =  int(input(f"Enter a slot : {time}"))

        if slot in time:
            k = []
            for s in db.values():
                k.append(s["slot"])

            if slot in k :
                print("appoinment already satified ") 
    
            else :
                db.update({phone:{"name":name,"phone":phone,"dr":dr,"slot":slot}})
        else: 
            print("invalid slot")

    elif choice == 2:
        print("cancel appoinment")
        phone = input('Enter a phone')
        db.pop(phone)
        print("appoinment cancel")

    elif  choice == 3:
        print(db)


    c = str(input("continiue or noy say y or n : "))        
    
        
