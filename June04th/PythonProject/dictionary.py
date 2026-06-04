customer={
    "customer_id":101,
    "name":"Rahul",
    "city":"Hyderabad"
}
print(customer)

print(customer["name"])
print(customer["city"])

print(customer.get("name"))
print(customer.get("salary"))

customer["salary"]=75000
print(customer)

customer["name"]="Rahul Sharma"
print(customer)

customer.pop("salary")
print(customer)

del customer["city"]
print(customer)

