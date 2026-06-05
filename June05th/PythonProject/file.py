file=open("employees.txt","r")
data=file.read()
print(data)
file.close()

#Single Line
file=open("employees.txt","r")
print(file.readline())
file.close()

#Multiple Lines
file=open("employees.txt","r")
lines=file.readlines()
print(lines)

#Automatically closes the file object
with open("employees.txt","r") as file:
    data=file.read()
    print(data)

#Write mode
with open("employees1.txt","w") as file:
    file.write("Rahul\n")
    file.write("Priya\n")
    file.write("Reva\n")

with open("employees1.txt","a") as file:
    file.write("Amit\n")
    file.write("Piya")



















