# Regex
* Regular Expressions (Regex) are used to:
  1. Search for a specific string in a large amount of data
  2. Verify that a string has the proper format (Email, Phone, etc.)
  3. Find a string and replace it with another string
  4. Format data into the proper form for importing for example
```python
# import the Regex module
import re

# ---------- Was a Match Found ----------

# Match

# re.match() expression only matches at the beginnig of the string
# It returns a MatchObject instance or returns None
import re
print bool(re.match(r"ly", "similarly")) # False
print bool(re.match(r"ly", "ly should be in the beginning")) # True

# Search for ape in the string
if re.search("ape", "The ape was at the apex"):
    print("There is an ape")
 
# ---------- Get All Matches ----------
 
# findall() returns a list of matches
# . is used to match any 1 character or space
allApes = re.findall("ape.", "The ape was at the apex")
 
for i in allApes:
    print(i)
 
# finditer returns an iterator of matching objects
# You can use span to get the location
 
theStr = "The ape was at the apex"
 
for i in re.finditer("ape.", theStr):
 
    # Span returns a tuple
    locTuple = i.span()
 
    print(locTuple)
 
    # Slice the match out using the tuple values
    print(theStr[locTuple[0]:locTuple[1]])



re.split(r"-","+91-011-2711-1111")
# ['+91', '011', '2711', '1111']
re.split(r"[,.]", 100,000,000.000)
# [100, 000, 000, 000]
```

