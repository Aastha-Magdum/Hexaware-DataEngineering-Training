cities={"Hyderabad","Mumbai","Delhi"}
print(cities)

cities.add("Pune")
print(cities)

cities.update(["Delhi","Kolkata"])
print(cities)

cities.remove("Mumbai")
print(cities)

cities.discard("Pune")
print(cities)

fruits=["Mango","Apple","Mango"]
print(fruits)

unique_fruits=set(fruits)
print(unique_fruits)

set1={"Python","SQL"}
set2={"MongoDB","Python"}

res=set1.union(set2)
print(res)

res=set1.intersection(set2)
print(res)

res=set1.difference(set2)
print(res)

res=set1.symmetric_difference(set2)
print(res)