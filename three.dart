// Class Overriding an Inherited Method:
// (This was already demonstrated in the first part with the Dog class.)

// Instance Initialized with Data from a File:

import 'dart:io';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }
}
