# FILE IO
* We can save and read data from files
* We start the code with with which guarantees the file will be closed if the program crashes

```python
# mode w overwrites file
# mode a appends

with open("mydata.txt", mode="w", encoding="utf-8") as myFile:
    # You can write to the file with write
    # It doesn't add a newline
    myFile.write("Some random text\nMore random text\nAnd some more")

# Open a file for reading
with open("mydata.txt", encoding="utf-8") as myFile:
    # Use read() to get everything at once
    print(myFile.read())

# Find out if the file is closed
print(myFile.closed)
```