import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print('Contents of the file:');
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('Error: $e');
    }
  }
}

void main() {
  // Provide the file path you want to read
  String filePath = 'path/to/your/file.txt';

  // Call the function to read the file
  readFile(filePath);
}
