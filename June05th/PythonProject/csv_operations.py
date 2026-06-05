import csv

employees = [
    [101, "Rahul Sharma", "Data Engineering", 75000, "Hyderabad"],
    [102, "Priya Reddy", "AI Engineering", 85000, "Bangalore"],
    [103, "Amit Kumar", "Data Engineering", 65000, "Mumbai"],
    [104, "Sneha Patel", "Data Science", 95000, "Chennai"],
    [105, "Farhan Ali", "Cloud Engineering", 80000, "Delhi"]
]
#writing to csv file
with open("employees.csv", "w", newline="") as file:
    writer = csv.writer(file)

    writer.writerow(
        ["employee_id", "name", "department", "salary", "city"]
    )

    writer.writerows(employees)
print("employee.csv created successfully")

#reading a csv file
with open("employees.csv","r") as file:
    reader=csv.reader(file)
    next(reader)
    for row in reader:
        print(row)

    for row in reader:
        print(row[1])

#counting employees
count=0
with open("employees.csv","r") as file:
    reader=csv.reader(file)
    next(reader)
    for row in reader:
        count+=1
print(count)

#Find Highest Salary
highest_salary = 0
for emp in employees:
    if int(emp[3]) > highest_salary:
        highest_salary = int(emp[3])

print("Highest Salary =", highest_salary)

#Find Lowest Salary
lowest_salary = int(employees[0][3])
for emp in employees:
    if int(emp[3]) < lowest_salary:
        lowest_salary = int(emp[3])
print("Lowest Salary =", lowest_salary)

#Find Average Salary
total_salary = 0
for emp in employees:
    total_salary += int(emp[3])
average_salary = total_salary / len(employees)
print("Average Salary =", average_salary)

#Find Total Salary Payout
total_salary = 0
for emp in employees:
    total_salary += int(emp[3])
print("Total Salary Payout =", total_salary)

#Display Hyderabad Employees
print("Hyderabad Employees:")
for emp in employees:
    if emp[4] == "Hyderabad":
        print(emp)

#Display AI Engineering Employees
print("AI Engineering Employees:")
for emp in employees:
    if emp[2] == "AI Engineering":
        print(emp)

#Display Employees Earning Above 80000
print("Employees Earning Above 80000:")
for emp in employees:
    if int(emp[3]) > 80000:
        print(emp)
