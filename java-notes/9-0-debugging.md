# Debugging
* Syntax errors: errors found by the compiler
* Run-time errors: errors that occur when the program is running
* Logic errors: errors found by the programmer looking for the causes of erroneous results

## Exceptions
* `ArithmeticException`: Something went wrong during an arithmetic operation; for example, division by zero.
* `NullPointerException`: You tried to access an instance variable or invoke a method on an object that is currently null.
* `ArrayIndexOutOfBoundsException`: The index you are using is either negative or greater than the last index of the array (i.e., array.length-1).
* `FileNotFoundException`: Java didn’t find the file it was looking for

## Exception Handling
```java
try {

  //  Block of code to try

} catch (NullPointerException e) {

  // Print the error message like this:
  System.err.println("NullPointerException: " + e.getMessage());

  // Or handle the error another way here

}
```

## Logic Errors
