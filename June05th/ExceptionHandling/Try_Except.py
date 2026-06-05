#try-except
try:
    a=10
    b=0
    res=a/b
    print(res)
except:
    print("Error occured")
print("Program completed")

#Specific Exceptions
try:
    a=10
    b=0
    print(a/b)
except ZeroDivisionError:
    print("Division by zero error")

try:
    age=int(input("Enter your age"))
    print(age)
except ValueError:
    print("Please enter numeric value")

#Multiple Exceptions
try:
    age=int(input("Enter your age: "))
    print(100/age)
except ValueError:
    print("Invalid Number")
except ZeroDivisionError:
    print("Age cannot be zero")

#Exception object
try:
    num=int("abc")
except Exception as e:
    print(e)

#Else Block
try:
    num=10
    print(num)
except:
    print("Error")
else:
    print("Success")

#Finally block
try:
    print(10/0)
except:
    print("Error")
finally:
    print("Connection Closed")

#Raise Error
salary=-1000
if salary<0:
    raise ValueError("Salary cannot be negative")



