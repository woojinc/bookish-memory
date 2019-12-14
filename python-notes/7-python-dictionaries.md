# Dictionaries
* Dictionaries are lists of key / value pairs
* Keys and values can use any data type
* Duplicate keys aren't allowed
```python
heroes = {
    "Superman": "Clark Kent",
    "Batman": "Bruce Wayne"
}

villains = dict([
    ("Lex Luthor", "Lex Luthor"),
    ("Loki", "Loki")
])

print("Length", len(heroes))

print(heroes.get("Superman"))
print(heroes["Superman"])

heroes["Flash"] = "Barry Allan"
heroes["Flash"] = "Barry Allen"

# Get list of tuples
print(list(heroes.items()))

# Get list of keys and values
print(list(heroes.keys()))
print(list(heroes.values()))

# Delete
del heroes["Flash"]

# Remove a key and return it
print(heroes.pop("Batman"))

# Search for key
print("Superman" in heroes)

# Cycle through a dictionary
for k in heroes:
    print(k)

for v in heroes.values():
    print(v)

# Formatted print with dictionary mapping
d1 = {"name": "Bread", "price": .88}
print("%(name)s costs $%(price).2f" % d1)
```

# Sets
* Sets are lists that are unordered, unique
* and while values can change those values
* must be immutable

```python
s1 = set(["Derek", 1])
s2 = {"Paul", 1}

print("Length", len(s2))

# Join sets
s3 = s1 | s2
print(s3)

s3.add("Doug")
s3.discard("Derek")

# Remove random value
print("Random", s3.pop())

# Add values in s2 to s3
s3 |= s2

# Return common values (You can include multiple
# sets as attributes)
print(s1.intersection(s2))

# All unique values
print(s1.symmetric_difference(s2))

# Values in s1 but not in s2
print(s1.difference(s2))

# Clear values
s3.clear()

# Frozen sets can't be edited
s4 = frozenset(["Paul", 7])
```