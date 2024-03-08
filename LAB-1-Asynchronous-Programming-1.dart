import 'dart:async';
import 'dart:math';

void main() async {

  String quote = await fetchRandomQuote();
  
  print("Random Quote: $quote");
}

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  
  List<String> quotes = [
    "The only limit to our realization of tomorrow will be our doubts of today. - Nelson Mandela",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Walt Disney",
    "In three words I can sum up everything I've learned about life: it goes on. - John Lennon",
    "The best way to predict the future is to create it. - Abraham Lincoln",
    "You only live once, but if you do it right, once is enough. - Mae West",
  ];
  
  Random random = Random();
  int index = random.nextInt(quotes.length);
  
  return quotes[index];
}