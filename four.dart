import 'dart:io';

// Base class
class Animal {
  // Method within Animal class
  void makeSound() {
    print("Some generic sound");
  }
}

// Derived class
class Dog extends Animal {
  @override
  // Invoked the method
  void makeSound() {
    print("Woof!");
  }
}

// Interface
abstract class Vehicle {
  void drive();
}

// Class implementing the interface
class Car implements Vehicle {
  @override
  void drive() {
    print("Car is being driven");
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }
}

void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Demonstration of classes and inheritance
  Animal animal = Animal();
  animal.makeSound(); // Output: Some generic sound

  Dog dog = Dog();
  dog.makeSound(); // Output: Woof!

  // Demonstration of interface implementation
  Car car = Car();
  car.drive(); // Output: Car is being driven

  // Demonstration of instance initialized with data from a file
  File file = File('person.txt');
  Person person = Person.fromFile(file);
  print("Name: ${person.name}, Age: ${person.age}");

  // Demonstration of method with loop
  printNumbers(5);
}

