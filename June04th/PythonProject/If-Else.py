#IF-ELSE
salary=35000

if salary>50000:
    print("High Income")
else:
    print("Normal Income")

#MULTIPLE IF-ELSE
marks=85

if marks>=90:
    print("Grade A")
elif marks>=75:
    print("Grade B")
elif marks>=60:
    print("Grade C")
else:
    print("Grade D")

#AND
salary=75000
experience=5

if salary>50000 and experience >=3:
    print("Eligible")
else:
    print("Not Eligiible")

#OR
salary=80000
experience=1

if salary>=50000 or experience >=3:
    print("Eligible")
else:
    print("Not Eligiible")

#NOT
is_blocked=False
if not is_blocked:
    print("Login Allowed")



