import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const ImagePage(),
  ));
}

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/image1.jpeg'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '1975 Porsche 911 Carrera',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Essential Information",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Text("1 of 3 done"),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.done_outline_rounded),
                      Text(
                        "Year , Make , Model , VIN",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Icon(Icons.edit),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Year , 1975"),
                    Text("Make , Ford"),
                    Text("Model , Mustang"),
                    Text("VIN , 1234567890"),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.done_outline_rounded),
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.edit),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.done_outline_rounded),
                        Text(
                          "Photo",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.edit),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
