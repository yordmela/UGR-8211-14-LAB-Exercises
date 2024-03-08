import 'dart:io';

void main() {
 
  stdout.write('Enter the file path: ');
  String filePath = stdin.readLineSync()!;

  try {
    
    String fileContent = readFile(filePath);
    print('File Content:\n$fileContent');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}


String readFile(String filePath) {
  File file = File(filePath);
  return file.readAsStringSync();
}