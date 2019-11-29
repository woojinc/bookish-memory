# Intro to Java

* Created by Sun Microsystems in 1995
  * WORA : Write Once Run Anywhere / Everywhere
  * JVM: Java Virtual Machine

```java
public class HelloYou {
  public static void main(String[] args) {
    System.out.println("Hello Woojin!");
  }
}
```
* Java progrmas have at least one class andone `main()` method
* The `main()` method runs the tasks of the program

* `println`: Print Line
* `//`: Singel line comment
* `/* */`: Multi line comment
* `;`: Java does not care for whitespace, but `;` ends the line

## Java is a compiled language

``` 
javac Plankton.java -> Creates complied java file
java Plankton -> Executes the compiled java file
```

* Compiling catches mistaeks in our code
* Compilers transfrom code into an executable class