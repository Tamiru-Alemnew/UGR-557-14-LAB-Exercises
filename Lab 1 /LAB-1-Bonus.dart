import 'dart:io';
import 'dart:async';

void main() {
  List<String> urls = [
    'url1',
    'url2',
    'url3',
  ];

  List<Future> futures = [];

  for (var url in urls) {
    futures.add(downloadFile(url, urls));
  }

  Future.wait(futures).then((_) {
    print('All files downloaded successfully!');
  }).catchError((e) {
    print('Error downloading files: $e');
  });
}

Future downloadFile(String url, List<String> urls) async {
  HttpClient client = HttpClient();
  HttpClientRequest request = await client.getUrl(Uri.parse(url));
  HttpClientResponse response = await request.close();

  int contentLength = response.contentLength;
  int downloaded = 0;

  List<int> data = [];

  response.listen((List<int> chunk) {
    data.addAll(chunk);
    downloaded += chunk.length;
    if (contentLength != -1) {
      double progress = downloaded / contentLength * 100;
      print('Downloaded: ${progress.toStringAsFixed(2)}%');
    }
  }, onDone: () {
    File file = File('downloaded_file_${urls.indexOf(url) + 1}.txt');
    file.writeAsBytes(data).then((_) {
      print('File ${urls.indexOf(url) + 1} downloaded successfully!');
    }).catchError((e) {
      print('Error saving file: $e');
    });
  }, onError: (e) {
    print('Error downloading file: $e');
  });
}
