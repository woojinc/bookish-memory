# Comparison
```python
age = 30
if age > 21:
    print("you can drink")
elif age >= 16:
    print("you can drive a car")
else:
    print("you can't drive")

# and or not
age = 15
if age < 5:
    print("Stay home")
elif age >= 5 and age <= 6:
    print("Go to Kindergarten")
elif age > 6 and age <= 17:
    print("Grade", (age - 5))
else:
    print("College")

# Ternary
canVote = True if age >= 18 else False
print(canVote)
```