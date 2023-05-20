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

/*
প্রশ্ন

Write a Dart function called getOddNumbers that takes a list of integers as input and returns a new list containing only the odd numbers from the input list.

 

Write a Dart program that uses this function to take input from the user, and prints both the input list and the output list using the print() function.

 

For example, if the user inputs the list [2, 5, 8, 11, 13, 18, 21, 24], the program should return the output list [5, 11, 13, 21].

 

Hint: You can use an if statement to check if a number is odd or even.
*/
