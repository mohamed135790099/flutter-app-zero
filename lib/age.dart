import 'dart:io';

class AgeCalculator{
  static var age;
  AgeCalculator(int p){
    print("Enter Your Birth Year:");
    int birthYear = p;
    age= DateTime.now().year-birthYear;
    print("Your Age is $age Years Old");
  }
}