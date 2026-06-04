cities=("Hyderabad","Mumbai","Chennai","Delhi","Pune")

print(cities)
print(cities[0])
print(cities[-1])

print(len(cities))
print(cities[1:3])

employee=(101,"Rahul","75000")
print(employee)

emp_id,emp_name,salary=employee
print(emp_id)
print(emp_name)
print(salary)

#multiple values
def get_employees():
    return 101,"Rahul",75000

res=get_employees()
print(res)

#Each row as tuple

record=(
    101,
    "Rahul",
    "Hyderabad",
    75000
)
print(record)