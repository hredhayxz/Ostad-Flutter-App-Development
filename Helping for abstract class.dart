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
  Dog(String name, int age, String species) : super(name, age, species);

  @override
  String makeSound() {
    return "Woof!";
  }

  @override
  String eat() {
    return "I eat dog food!";
  }

  @override
  String sleep() {
    return "I sleep on the couch!";
  }
}

class Cat extends Animal {
  Cat(String name, int age, String species) : super(name, age, species);

  @override
  String makeSound() {
    return "Meow!";
  }

  @override
  String eat() {
    return "I eat cat food!";
  }

  @override
  String sleep() {
    return "I sleep in a box!";
  }
}

void main() {
  Dog dog = Dog("Buddy", 5, "Canine");
  Cat cat = Cat("Whiskers", 3, "Feline");

  print(dog.makeSound());
  print(dog.eat());
  print(dog.sleep());

  print(cat.makeSound());
  print(cat.eat());
  print(cat.sleep());
}
