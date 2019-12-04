# Loops

## While loop

```java
int cupsOfCoffee = 1;
cupsOfCoffee++;
```

```java
// Importing the Random library
import java.util.Random;

class LuckyFive {
  
  public static void main(String[] args) {
    
    // Creating a random number generator
    Random randomGenerator = new Random();
    
    // Generate a number between 1 and 6
    int dieRoll = randomGenerator.nextInt(6) + 1;

    // Repeat while roll isn't 5
    while (dieRoll != 5) {
      System.out.println(dieRoll);
      dieRoll = randomGenerator.nextInt(6) + 1;
    }
    
  }
  
}
```

## For loop
```java
class Coffee {
  
  public static void main(String[] args) {
    
    for (int cupsOfCoffee = 1; cupsOfCoffee <= 100; cupsOfCoffee++) {
      
      System.out.println("Fry drinks cup of coffee #" + cupsOfCoffee);
      
    }
    
  }
  
}
```

## For Each Loop
* For Each loop can access the ArrayList
```java
import java.util.ArrayList;

class MostExpensive {
  
  public static void main(String[] args) {
    
    ArrayList<Double> expenses = new ArrayList<Double>();
    expenses.add(74.46);
    expenses.add(63.99);
    expenses.add(10.57);
    expenses.add(81.37);
    
    double mostExpensive = 0;
    
    // Iterate over expenses
    for (double expense : expenses) {
      if (mostExpensive < expense) {
        mostExpensive = expense;
      }
    }
    
    System.out.println(mostExpensive);
    
  }
  
}
```