import 'dart:io';

void main() {
  try {
   
    double numerator = getNumberInput('Enter the numerator: ');
    double denominator = getNumberInput('Enter the denominator: ');

    
    double result = divideNumbers(numerator, denominator);

   
    print('Result of division: $result');
  } catch (e) {
    if (e is UnsupportedError && e.toString().contains('division by zero')) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}


double getNumberInput(String prompt) {
  while (true) {
    try {
      stdout.write(prompt);
      return double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Error: Invalid input. Please enter a valid number.');
    }
  }
}


double divideNumbers(double numerator, double denominator) {
  if (denominator == 0) {
    throw UnsupportedError('Cannot perform division by zero.');
  }
  return numerator / denominator;
}