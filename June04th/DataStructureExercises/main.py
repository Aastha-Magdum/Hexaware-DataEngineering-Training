#List
salaries = [45000, 55000, 65000, 75000, 85000]

# Exercise 1
print("All Salaries:")
for sal in salaries:
    print(sal)

# Exercise 2
print("Maximum Salary:", max(salaries))
print("Minimum Salary:", min(salaries))

# Exercise 3
print("Total Salary Payout:", sum(salaries))

# Exercise 4
print("Average Salary:", sum(salaries) / len(salaries))

# Exercise 5
salaries.append(95000)
salaries.append(105000)
print("After Adding Salaries:", salaries)

# Exercise 6
salaries.remove(55000)
print("After Removing 55000:", salaries)

# Exercise 7
print("Ascending Order:", sorted(salaries))

# Exercise 8
print("Descending Order:", sorted(salaries, reverse=True))

# Exercise 9
sorted_list = sorted(salaries, reverse=True)
print("Second Highest Salary:", sorted_list[1])

# Exercise 10
print("Salaries Greater Than 70000:")
for salary in salaries:
    if salary > 70000:
        print(salary)

#Tuple
employee = (
    101,
    "Rahul Sharma",
    "Data Engineering",
    75000
)

# Exercise 11
print(employee)

# Exercise 12
print("Employee Name:", employee[1])

# Exercise 13
print("Department:", employee[2])

# Exercise 14
emp_id, emp_name, dept, salary = employee
print(emp_id, emp_name, dept, salary)

# Exercise 15
print("Length:", len(employee))
print("First Element:", employee[0])
print("Last Element:", employee[-1])

#Set
batch_a = {"Rahul", "Priya", "Amit", "Sneha", "Farhan"}
batch_b = {"Priya", "Sneha", "Neha", "Arjun", "Farhan"}

# Exercise 16
print("Common Students:", batch_a.intersection(batch_b))

# Exercise 17
print("Only in Batch A:", batch_a - batch_b)

# Exercise 18
print("Only in Batch B:", batch_b - batch_a)

# Exercise 19
print("All Unique Students:", batch_a.union(batch_b))

# Exercise 20
print("Present in One Batch Only:", batch_a.symmetric_difference(batch_b))

#Dictionary
employee_info = {
    "employee_id": 101,
    "name": "Rahul Sharma",
    "department": "Data Engineering",
    "salary": 75000,
    "city": "Hyderabad"
}

# Exercise 21
print(employee_info["name"])

# Exercise 22
print(employee_info["department"])
print(employee_info["city"])

# Exercise 23
employee_info["experience"] = 5

# Exercise 24
employee_info["salary"] = 85000

# Exercise 25
employee_info.pop("city")

# Exercise 26
print(employee_info.keys())

# Exercise 27
print(employee_info.values())

# Exercise 28
print(employee_info.items())

#List of Dictionaries
employees = [
    {"id": 101, "name": "Rahul", "department": "IT", "salary": 50000},
    {"id": 102, "name": "Priya", "department": "HR", "salary": 70000},
    {"id": 103, "name": "Amit", "department": "IT", "salary": 60000},
    {"id": 104, "name": "Sneha", "department": "Finance", "salary": 80000},
    {"id": 105, "name": "Farhan", "department": "IT", "salary": 90000}
]

# Exercise 29
print("Employee Names:")
for emp in employees:
    print(emp["name"])

# Exercise 30
print("IT Department Employees:")
for emp in employees:
    if emp["department"] == "IT":
        print(emp)

# Exercise 31
highest = max(employees, key=lambda x: x["salary"])
print("Highest Salary Employee:", highest)

# Exercise 32
lowest = min(employees, key=lambda x: x["salary"])
print("Lowest Salary Employee:", lowest)

# Exercise 33
avg_salary = sum(emp["salary"] for emp in employees) / len(employees)
print("Average Salary:", avg_salary)

# Exercise 34
total_salary = sum(emp["salary"] for emp in employees)
print("Total Salary Payout:", total_salary)

# Exercise 35
print("Employees Earning More Than 70000:")
for emp in employees:
    if emp["salary"] > 70000:
        print(emp)

# Exercise 36
count = 0
for emp in employees:
    if emp["department"] == "IT":
        count += 1
print("IT Employee Count:", count)

# Exercise 37
sorted_emp = sorted(employees, key=lambda x: x["salary"], reverse=True)
for emp in sorted_emp:
    print(emp["name"], "-", emp["salary"])

# Exercise 38
second_highest = sorted_emp[1]
print("Second Highest Salary Employee:", second_highest)

# Exercise 39
departments = set()
for emp in employees:
    departments.add(emp["department"])

print("Departments:", departments)