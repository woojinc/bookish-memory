# Conditionals and Control Flow

## if ... else if ... else

```java
if (hasPrerequisite) {

  // Enroll in course

} else if (!hasPrerequisite) {

  // Enroll in prerequisite

} else {

  // else...

}
```

## Switch Statement

```java
String course = "History";

switch (course) {
  case "Algebra": 
    // Enroll in Algebra
    break; 
  case "Theatre":
    // Enroll in Theatre
    break;
  default:
    System.out.println("Course not found");
}
```

