# Strings

* String is **Immutable**
```python
print(r"I'll be ignored \n")
print("Hello " + "You")
str3 = "Hello You"

print("1st 3", str[0:3])
print("Every Other", str3[0:-1:2])
str3 = str3.replace("Hello", "Goodbye")
print(str3) # Goodbye You
str3 = str3[:8] + "y" + str3[9:]
print(str3) # Goodbye you

print("you" in str3) # True
print("you" not in str3) # False
print("You index", str3.find("you")) # true, if not returns -1

print("    Hello   ".strip()) # lstrip, rstrip

print(" ".join(["Some", "Words"]))

print("A string".split(" "))

int1 = int2 = 5
print(f'{int1} + {int2} = {int1 + int2}')

print("A String".lower())
print("A String".upper())

print("AString123".isalnum()) # True (either alpha or num)
print("AString".isalpha()) # True
print("123".isdigit()) # True
```