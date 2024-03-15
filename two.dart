// Class Implementing an Interface:
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
