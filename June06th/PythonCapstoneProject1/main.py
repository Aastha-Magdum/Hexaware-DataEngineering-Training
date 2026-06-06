import pandas as pd
import numpy as np

#1
df = pd.read_csv("orders.csv")

#2
print(df)

#3
print("Total Orders:", len(df))

#4
df["revenue"] = df["quantity"] * df["price"]
print("Total Revenue:", df["revenue"].sum())

#5
print("Highest Order Value:", df["revenue"].max())

#6
print("Lowest Order Value:", df["revenue"].min())

#7
print("Average Order Value:", df["revenue"].mean())

#8
print(df["customer_name"].unique())

#9
print(df["customer_name"].nunique())

#10
print(df.groupby("customer_name")["revenue"].sum().idxmax())

#11
print(df["product"].value_counts())

#12
print(df.groupby("product")["revenue"].sum())

#13
print(df.groupby("product")["quantity"].sum().idxmax())

#14
print(df.groupby("product")["quantity"].sum().idxmin())

#15
print(df.groupby("category")["revenue"].sum())

#16
print(df["city"].value_counts())

#17
print(df.groupby("city")["revenue"].sum())

#18
print(df.groupby("city")["revenue"].sum().idxmax())

#19
products = list(df["product"])
products.sort()
print(products)

#20
cities = set(df["city"])
print(cities)

#21
city_revenue = dict(df.groupby("city")["revenue"].sum())
print(city_revenue)

#22
product_quantity = dict(df.groupby("product")["quantity"].sum())
print(product_quantity)

#23
def calculate_total_revenue():
    return df["revenue"].sum()
print(calculate_total_revenue())

#24
def find_top_product():
    return df.groupby("product")["quantity"].sum().idxmax()
print(find_top_product())

#25
def find_top_city():
    return df.groupby("city")["revenue"].sum().idxmax()
print(find_top_city())

#26
def find_average_order_value():
    return df["revenue"].mean()
print(find_average_order_value())

#27
try:
    pd.read_csv("orders.csv")
except FileNotFoundError:
    print("File Not Found")

#28
try:
    df["quantity"] = df["quantity"].astype(int)
except ValueError:
    print("Invalid Quantity")

#29
try:
    df["price"] = df["price"].astype(float)
except ValueError:
    print("Invalid Price")

#30
order_values = np.array(df["revenue"])
print(np.sum(order_values))
print(np.mean(order_values))
print(np.max(order_values))
print(np.min(order_values))
print(np.std(order_values))

#31
print(df)

#32
print(df["revenue"])

#33
print(df.sort_values("revenue", ascending=False).head())

#34
print(df.groupby("city")["revenue"].sum())

#35
print(df.groupby("product")["revenue"].sum())

#36
print(df.groupby("product")["quantity"].sum().sort_values(ascending=False))

#37
print(df["city"].value_counts())

#38
high_value_orders = df[df["revenue"] > 50000]
high_value_orders.to_csv("high_value_orders.csv", index=False)

#39
electronics_orders = df[df["category"] == "Electronics"]
electronics_orders.to_csv("electronics_orders.csv", index=False)

#40
with open("sales_summary_report.txt", "w") as file:
    file.write("Total Orders : " + str(len(df)) + "\n")
    file.write("Total Revenue : " + str(df["revenue"].sum()) + "\n")
    file.write("Average Order Value : " + str(df["revenue"].mean()) + "\n")
    file.write("Highest Order Value : " + str(df["revenue"].max()) + "\n")
    file.write("Lowest Order Value : " + str(df["revenue"].min()) + "\n")
print("Report Generated Successfully")