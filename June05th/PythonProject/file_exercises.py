#1
from audioop import avg

file=open("employees.txt","r")
print(file.read())
file.close()

#2
file=open("employees.txt","r")
for line in file:
    print(line)
file.close()

#3
file=open("employees.txt","r")
count = 0
for line in file:
    count+=1
print("Total Employees=", count)
file.close()

#4
file=open("employees.txt","r")
for line in file:
    data=line.strip().split(",")
    print(data[1])
file.close()

#5
file=open("employees.txt","r")
for line in file:
    data=line.strip().split(",")
    if data[4]=="Hyderabad":
        print(data[1])
file.close()

#6
file=open("employees.txt","r")
for line in file:
    data=line.strip().split(",")
    if data[4]=="Banglore":
        print(data[1])
file.close()

#7
with open("employees.txt","r") as file:
    for line in file:
        data=line.strip().split(",")
        salary=int(data[3])
        if salary>80000:
            print(data[1], salary)

#8
with open("employees.txt","r") as file:
    highest=0
    for line in file:
        data=line.strip().split(",")
        salary=int(data[3])
        if salary>highest:
            highest=salary
    print("Highest salary= ", highest)

#9
with open("employees.txt","r") as file:
    lowest=999999
    for line in file:
        data=line.strip().split(",")
        salary=int(data[3])
        if salary<lowest:
            lowest=salary
    print("Lowest salary= ", lowest)

#10
with open("employees.txt","r") as file:
    total=0
    count=0
    for line in file:
        data=line.strip().split(",")
        total+=int(data[3])
        count+=1
    average=total/count
    print("Average salary= ", average)

#11
with open("employees.txt","r") as file:
    total=0

    for line in file:
        data=line.strip().split(",")
        total+=int(data[3])
    print("Total salary= ", total)

#12
with open("employees.txt","r") as file:
    count=0
    for line in file:
        data=line.strip().split(",")
        if data[2]=="AI Engineering":
            count+=1
    print("AI Engineering= ",count)

#13
with open("employees.txt","r") as file:
    count=0
    for line in file:
        data=line.strip().split(",")
        if data[2]=="Data Engineering":
            count+=1
    print("Data Engineering= ",count)

#14
with open("employees.txt","r") as file:

    for line in file:
        data=line.strip().split(",")
        if data[2]=="AI Engineering":
            print(data[1])

#15
file=open("employees.txt","r")
newfile=open("high_salary_employees.txt","w")
for line in file:
    data=line.strip().split(",")
    if int(data[3])>80000:
        newfile.write(line)
file.close()
newfile.close()

#16
with open("employees.txt","r") as file:
    with open("hyderabad_employees.txt","w") as newfile:
        for line in file:
            data=line.strip().split(",")
            if data[4]=="Hyderabad":
                newfile.write(line)

#17
with open("employees.txt","r") as file:
    cities=set()
    for line in file:
        data=line.strip().split(",")
        cities.add(data[4])
    for city in cities:
        print(city)

#18
with open("employees.txt","r") as file:
    depts={}
    for line in file:
        data=line.strip().split(",")
        dept=data[2]
        if dept in depts:
            depts[dept]+=1
        else:
            depts[dept]=1
    for key in depts:
        print(key,"=", depts[key])

#19
with open("employees.txt","r") as file:
    highest_salary=0
    emp_name=""
    for line in file:
        data=line.strip().split(",")
        salary=int(data[3])
        if salary>highest_salary:
            highest_salary=salary
            emp_name=data[1]
    print(emp_name)
    print(highest_salary)

#20
file = open("employees.txt", "r")
count = 0
total_salary = 0
highest = 0
lowest = 999999

for line in file:
    data = line.strip().split(",")

    salary = int(data[3])

    count += 1
    total_salary += salary

    if salary > highest:
        highest = salary

    if salary < lowest:
        lowest = salary

average = total_salary / count

report = open("employee_report.txt", "w")

report.write("Total Employees = " + str(count) + "\n")
report.write("Highest Salary = " + str(highest) + "\n")
report.write("Lowest Salary = " + str(lowest) + "\n")
report.write("Average Salary = " + str(average) + "\n")
report.write("Total Salary = " + str(total_salary) + "\n")

report.close()
file.close()




