/*
Author: Md Alhaz Mondal Hredhay
Student of Faridpur Polytechnic Institute
GitHub & Linkedin: hredhayxz
E-mail: amhredhay102@gmail.com
*/
import 'dart:io';

List<int> getOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int number in numbers) {
    if (number % 2 != 0) {
      oddNumbers.add(number);
    }
  }
  return oddNumbers;
}

void main() {
  List<int> randomNumbers = [];
  int value, t;
  print("Enter test case number ");
  String? str1 = stdin.readLineSync();
  t = int.parse(str1!);
  print("Enter values\n");
  for (int i = 0; i < t; i++) {
    String? str2 = stdin.readLineSync();
    value = int.parse(str2!);
    randomNumbers.add(value);
  }
  print(randomNumbers);
  print(getOddNumbers(randomNumbers));
}
