// Exercise-16--Asynchronous Programming (async/await)

import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  // Create a new HttpClient
  var client = http.Client();

  try {
    // Send a GET request to the URL
    var response = await client.get(Uri.parse(url));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Open a new file for writing
      var file = File(savePath);

      // Write the response body (file content) to the file
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully to: $savePath');
    } else {
      print('Failed to download file: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  } finally {
    // Close the client
    client.close();
  }
}

void main() async {
  // URL of the file to download
  var url = 'https://example.com/file.txt';

  // Path to save the downloaded file
  var savePath = 'downloaded_file.txt';

  // Call the downloadFile function asynchronously
  await downloadFile(url, savePath);
}