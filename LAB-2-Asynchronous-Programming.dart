import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    // Send a GET request to the URL
    var response = await http.get(Uri.parse(url));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Open a file for writing in binary mode
      var file = File(savePath);
      var raf = file.openWrite();

      // Write the response content to the file
      await raf.addStream(response.bodyBytes);

      // Close the file
      await raf.close();

      print('File downloaded successfully to: $savePath');
    } else {
      print('Failed to download file: HTTP status ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  }
}

void main() async {
  // URL of the file to download
  String url = 'https://example.com/file.zip';

  // Local path to save the downloaded file
  String savePath = 'downloaded_file.zip';

  // Download the file asynchronously
  await downloadFile(url, savePath);
}
