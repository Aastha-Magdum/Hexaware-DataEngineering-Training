import json

employees=[
    {
        "employee_id":101,
        "name":"Rahul Sharma",
        "department":"Data Engineering",
        "salary":75000,
        "city":"Hyderabad"
    },

    {
        "employee_id": 102,
        "name": "Priya Reddy",
        "department": "AI Engineering",
        "salary": 85000,
        "city": "Bangalore"
    },

    {
        "employee_id": 103,
        "name": "Amit Kumar",
        "department": "Data Engineering",
        "salary": 65000,
        "city": "Mumbai"
    },

    {
        "employee_id": 104,
        "name": "Sneha Patel",
        "department": "Data Science",
        "salary": 95000,
        "city": "Chennai"
    },

    {
        "employee_id": 105,
        "name": "Farhan Ali",
        "department": "Cloud Engineering",
        "salary": 80000,
        "city": "Delhi"
    }

]

with open("employees.json","w") as file:
    json.dump(employees,file,indent=4)

print("JSON file created successfully")

with open("employees.json","r") as file:
    employees=json.load(file)
print(employees)

for emp in employees:
    print(emp)

for emp in employees:
    print(emp["name"])

print(len(employees))

#emp with highest salary
highest_salary=0
for emp in employees:
    if emp["salary"]>highest_salary:
        highest_salary=emp["salary"]
print("Highest salary", highest_salary)

#average salary
total_salary=0
for emp in employees:
    total_salary+=emp["salary"]
avg_salary=total_salary/len(employees)
print("Average salary", avg_salary)

#data engineering emp
print("Data Engineering Employees")
for emp in employees:
    if emp["department"]=="Data Engineering":
        print(emp)

#emp earning more than 80000
print("Employees earning more than 80000 are: ")
for emp in employees:
    if emp["salary"]>80000:
        print(emp)

#update salary
for emp in employees:
    if emp["employee_id"]==101:
        emp["salary"]=90000
print("salary updated successfully")

#add new emp
new_emp={
    "employee_id":106,
    "name":"Prerna sharma",
    "department":"Data Engineering",
    "salary":80000,
    "city":"Pune"
}
employees.append(new_emp)
print("Added employee successfully")

#delete emp
for emp in employees:
    if emp["employee_id"]==103:
        employees.remove(emp)
        break
print("Employee deleted succcesfully")




