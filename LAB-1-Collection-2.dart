import 'dart:math';

void main() {
  
  List<int> randomNumbers = List.generate(20, (index) => Random().nextInt(50));
  print('Generated list of random numbers: $randomNumbers');
  

  Set<int> uniqueNumbers = randomNumbers.toSet();
  print('Unique numbers: $uniqueNumbers');
}
