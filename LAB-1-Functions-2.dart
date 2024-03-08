import 'dart:io';

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  
  print('Enter the start of the range: ');
  int start = int.parse(stdin.readLineSync()!);

  print('Enter the end of the range: ');
  int end = int.parse(stdin.readLineSync()!);

  
  if (start >= end) {
    print('Error: Invalid range. End must be greater than start.');
    return;
  }

  
  print('Prime numbers within the range $start to $end are:');
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}