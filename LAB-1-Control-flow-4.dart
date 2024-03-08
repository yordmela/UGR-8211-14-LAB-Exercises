import 'dart:io';

void main() {

  print('Enter the operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;

  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result = calculateResult(operation, num1, num2);

 
  print('Result: $result');
}


double calculateResult(String operation, double num1, double num2) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print('Error: Cannot divide by zero.');
        exit(1); 
      }
    
    default:
      print('Error: Invalid operation.');
      exit(1); 
  }
}