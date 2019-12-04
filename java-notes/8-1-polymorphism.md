# Polymorphism
* Advantages of polymorphism
    * Simplifying syntax
    * Reducing cognitive overload for developers

## Method Overriding

* The overriding method needs to have these in common:
    * Method name
    * Return type
    * Number and type of parameters

`@Override`
* This keyword informs the compiler that this will override a method in the parent class. If the method does not exist, it will throw an error when it compiles.

```java
class Spaetzle extends Noodle {
  
  // Add the new cook() method below:
  @Override
  public void cook() {
    
    System.out.println("Grinding or scraping dough.");
    System.out.println("Boiling.");
    
    this.texture = "cooked";
    
  }
  
}
```

## Using a Child Class as its Parent Class
* Can use child class object where an object of its parents class is expected
* But this does not grant access to child specific methods

```java
// Dinner.java
class Dinner {
  
  private void makeNoodles(Noodle noodle, String sauce) {
    
    noodle.cook();
    
    System.out.println("Mixing " + noodle.texture + " noodles made from " + noodle.ingredients + " with " + sauce + ".");
    System.out.println("Dinner is served!");
    
  }
  
  public static void main(String[] args) {
    
    Dinner noodlesDinner = new Dinner();
    // Add your code here:
    Noodle biangBiang = new BiangBiang();
    noodlesDinner.makeNoodles(biangBiang, "soy sauce and chili oil");
    
  }
  
}

// Noodle.java
class Noodle {
  
  protected double lengthInCentimeters;
  protected double widthInCentimeters;
  protected String shape;
  protected String ingredients;
  protected String texture = "brittle";
  
  Noodle(double lenInCent, double wthInCent, String shp, String ingr) {
    
    this.lengthInCentimeters = lenInCent;
    this.widthInCentimeters = wthInCent;
    this.shape = shp;
    this.ingredients = ingr;
    
  }
  
  public void cook() {
    
    this.texture = "cooked";
    
  }
  
}

// BiangBiang.java
class BiangBiang extends Noodle {
  
  BiangBiang() {
    
    super(50.0, 5.0, "flat", "high-gluten flour, salt, water");
    
  }
  
}
```

## Child Classes in Arrays and ArrayLists
* Different calsses that shares a parent class together can be put in an array or ArrayList and be iterated


```java
class Noodle {
  
  protected double lengthInCentimeters;
  protected double widthInCentimeters;
  protected String shape;
  protected String ingredients;
  protected String texture = "brittle";
  
  Noodle(double lenInCent, double wthInCent, String shp, String ingr) {
    
    this.lengthInCentimeters = lenInCent;
    this.widthInCentimeters = wthInCent;
    this.shape = shp;
    this.ingredients = ingr;
    
  }
  
  public String getCookPrep() {
    
    return "Boil noodle for 7 minutes and add sauce.";
    
  }
  
  
  public static void main(String[] args) {
    
    Noodle spaghetti, ramen, pho;
    
    spaghetti = new Spaghetti();
    ramen = new Ramen();
    pho = new Pho();
    
    // Add your code below:
    Noodle[] allTheNoodles = {spaghetti, ramen, pho};
    
    for (Noodle noodle : allTheNoodles) {
      System.out.println(noodle.getCookPrep());
    }
    
  }
  
}
```