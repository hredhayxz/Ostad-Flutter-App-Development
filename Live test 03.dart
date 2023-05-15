/*
Author: Md Alhaz Mondal Hredhay
Student of Faridpur Polytechnic Institute
GitHub & Linkedin: hredhayxz
E-mail: amhredhay102@gmail.com
*/

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void sayHello() {
    print("Hello, my name is ${this.name}.");
  }

  int getAgeInMonths() {
    return this.age * 12;
  }
}

void main() {
  Person person = Person("Md Alhaz Mondal Hredhay", 21,
      "House #890, Gayeshpur, Damurhuda, Chuadanga 7220");
  person.sayHello();
  print("Age in months: ${person.getAgeInMonths()}");
}
