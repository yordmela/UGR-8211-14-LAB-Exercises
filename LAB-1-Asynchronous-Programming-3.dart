import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  
  return ['Data1', 'Data2', 'Data3', 'Data4', 'Data5'];
}

void main() async {
  print('Loading data from database...');
  
  List<String> data = await fetchDataFromDatabase();
  
  print('Data loaded:');
  data.forEach((element) {
    print(element);
  });
}