import 'dart:io' ;
void main() {
  print('Enter a string:');
  String inputString = stdin.readLineSync()!;

  String reversedString = reverseString(inputString);

  print('Reversed String: $reversedString');
}

String reverseString(String input) {

  return input.split('').reversed.join();
}