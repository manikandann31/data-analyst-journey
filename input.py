#method 1
a=int(input("enter the value: "))
import sys

# Method 2 - using command line arguments
full_name = sys.argv[1]
last_name = sys.argv[2]
email = full_name.lower().replace(" ", ".") + "." + last_name.lower() + "@company.com"

print("\n--- Your Profile ---")
print("Full Name =", full_name, last_name)
print("Generated Email =", email)

#another example:

A=int(input("Enter the value to display:"))
print("The Entered value is :",A)
 
name=sys.argv[3] #indha bracket la posura three ,namma run pamra command la kkudukura variables oda count ah define panudhu 
print(name)

