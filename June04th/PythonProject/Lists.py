cities=["Hyderabad", "Mumbai", "Delhi"]

print(cities[0])
print(cities[1])
print(cities[2])

print(cities[-1])
print(cities[-2])

cities[1]="Banglore"
print(cities)

cities.append("Chennai")
print(cities)

cities.insert(2,"Pune")
print(cities)

cities.extend(["Kochi","Kolkata"])
print(cities)

cities.remove("Delhi")
print(cities)

cities.pop()
print(cities)

del cities[0]
print(cities)

print(len(cities))
print("Mumbai" in cities)
print("Pune" in cities)

print(cities.index("Chennai"))
cities.sort()

cities.clear()
print(cities)