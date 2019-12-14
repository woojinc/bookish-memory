# Exception Handling
* You can handle errors that would otherwise crash your program
* By giving the while a value of True it will cycle until a break is reached


```python
while True:

    # If we expect an error can occur surround
    # potential error with try
    try:
        number = int(input("Please enter a number : "))
        break

    # The code in the except block provides an error message to set things right
    # We can either target a specific error like ValueError
    except ValueError:
        print("You didn't enter a number")

    # We can target all other errors with a default
    except:
        print("An unknown error occurred")

print("Thank you for entering a number")
```
