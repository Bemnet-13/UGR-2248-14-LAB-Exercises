// Exercise-21---Error Handling (try/catch)

import 'dart:io';

void main() {
  try {
    // Provide the path to the file you want to read
    var file = File('example.txt');
    var contents = file.readAsStringSync();
    print('File contents: $contents');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found or cannot be read.');
    } else {
      print('Error: $e');
    }
  }
}
