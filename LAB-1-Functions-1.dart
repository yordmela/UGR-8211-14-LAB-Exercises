import 'dart:io';


double calculateSum(double num1, double num2) {
  return num1 + num2;
}

void main() {
  
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  
  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  
  double result = calculateSum(num1, num2);

 
  print('The sum of $num1 and $num2 is: $result');
}