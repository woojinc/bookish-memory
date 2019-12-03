# ArrayLists
```java
import java.util.ArrayList;

ArrayList<String> babyNames;
ArrayList<Integer> babyAges;
ArrayList<Double> babyWeight;
ArrayList<Char> babyGender;
```

* `ArrayList` `<` generics `>` 

```java
// Declaring:
ArrayList<Integer> toDoList;
// Initializing:
toDoList = new ArrayList<Integer>();

// Declaring and initializing in one line:
ArrayList<String> toDoList = new ArrayList<String>();

String toDo1 = "Water plants";

toDoList.add(toDo1);

toDoList.get(0);

toDoList.set(0, "Eat food");

toDoList.remove("Eat food");

toDoList.indexOf("Eat food");
```