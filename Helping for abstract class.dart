/*
Author: Md Alhaz Mondal Hredhay
Student of Faridpur Polytechnic Institute
GitHub & Linkedin: hredhayxz
E-mail: amhredhay102@gmail.com
*/

abstract class Animal {
  String name;
  int age;
  String species;

  Animal(this.name, this.age, this.species);

  void makeSound();
  void eat();
  void sleep();
}

class Dog extends Animal {
  Dog(String name, int age, String species)
      : super(name, age, species);

  @override
  void makeSound() {
    print("Woof!");
  }

  @override
  void eat() {
    print("I eat dog food!");
  }

  @override
  void sleep() {
    print("I sleep on the couch!");
  }
}

class Cat extends Animal {
  Cat(String name, int age, String species)
      : super(name, age, species);

  @override
  void makeSound() {
    print("Meow!");
  }

  @override
  void eat() {
    print("I eat cat food!");
  }

  @override
  void sleep() {
    print("I sleep in a box!");
  }
}

void main() {
  Dog dog = Dog("Buddy", 5, "Canine");
  Cat cat = Cat("Whiskers", 3, "Feline");

  dog.makeSound();
  dog.eat();
  dog.sleep();

  cat.makeSound();
  cat.eat();
  cat.sleep();
}