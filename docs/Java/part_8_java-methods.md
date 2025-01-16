__Methods, methods methods - but which method?__

- Methods have access key words which define how other objects may interact with them
- Private, public and protected
- A private method can only be called within the class
- A public method can be called by other objects accessing the class
- Methods can be void - these have a method signature but no return method or method body
- The void methods are called at run time and the body is overriden at runtime
- A protected method is what?

- Private methods can call public methods within the class and outside the class
- Public methods can call public methods
- *Public methods within a class can call the private methods of that class but not of other classes*
- Public methods can not call private methods of another class
- Main method
- Extends - in abstraction
- Implements - with interfaces
- Extends and Implements - with an abstract class and an interface
- Static methods static - private and belongs to the class not instance of the class / private by default
    -- A way to ensure early binding within a class - static methods are loaded when the class is loaded on JVM
    -- Good for utility methods - static variables are loaded first - int weight/ height will be loaded on registers first
    -- Variables default is null/ zero no need to provide default values
    -- Attributes marked as final so that they NEVER change `STATIC_HEIGHT` for example would be a way to initalise a variable

```java
public class BmiCalcExample {
    public static void main(String[] args) {
        System.out.println(calcBMI(50, 1.6));
    }
//  weight in kilograms/ height in meters
    public static int calcBMI(int weight, int height) {
        return weight / height;
    }
}
```
