# Python Tutorial


* Python codes can be written in multiple lines
```python
v1 = (
    1 + 2 
    + 3
)

v1 = 1 + 2 \
     + 3
```

### **Comments**
```python
# single line comment
'''
Multi-line comment
'''
```

### **Variables**
* Case sensitive
* Multiple variable assignments
```python
 v1 = v2 = 10
```

#### Dynamically Typed
* Basic Data Types
    * integers, floats, complex numbers, strings, booleans
    * Floats are accurate only up to 15th digit
```python
print(type(10)) # this prints the type of the variable
print(sys.maxsize) # maximum size of int
print(sys.float_info.max) # maximum size of floats
```

```python
    cn1 = 5+ 6j # Complex numbers are consisted of real part + imaginary
    b1 = True # or False
    str = '' # or ""

    # Escape Sequences
    str1 = "Escape Sequences \' \" \t \\ \n"
    str2 = '''Triple quoted "" '' '''
    print ("Cast", type(int(5.4))) # Cast <class 'int'>
    print ("Cast", type(str(5.4))) # Cast <class 'str'>
    print ("Cast", type(chr(97))) # Cast <class 'str'>
    print ("Cast", type(ord('a'))) # Cast <class 'int'>
```

```python
print(12,12,2019, sep='/')
print("No Newline", end='')
print("\n%04d %s %.2f %c" % (1, "Woojin", "1.234", 'A'))
# \n => new line
# \%04d => 4 leading zeros 
# %s => string
# %.2f => float with 2 decimal points
# %c => char
```