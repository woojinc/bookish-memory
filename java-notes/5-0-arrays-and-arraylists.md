# Array and ArrayLists

```java
double[] prices;

prices = {13.15, 15.87, 14.22, 16.66};

double[] prices = {13.15, 15.87, 14.22, 16.66};

String[] clothingItems = {"Tank Top", "Beanie", "Funny Socks", "Corduroys"};

public String[] getTopics(){

}
```

## Java `Arrays` package
```java
import java.util.Arrays; // includes toString() method;

String[] topics = {"Opinion", "Tech", "Science", "Health"};

System.out.println(Arrays.toString(topics));
```

## Creating an Empty Array
* Empty arrays have to be initialized with a fixed size
```java
String[] menuItems = new String[5];
```
* `length`: length of an array
```java
double[] prices = {13.1, 15.87, 14.22, 16.66};

System.out.println(prices.length);
```


## `Stringp[] args`
```java
public class HelloYou {
  public static void main(String[] args) {
    System.out.println("Hello " + args[0]);  
  }
}

java HelloYou Woojin

Hello Woojin
```

