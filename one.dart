// Base class
// Object-Oriented Model using Classes and Inheritance:
class Animal {
  void makeSound() {
    print("Some generic sound");
  }
}

// Derived class
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}
