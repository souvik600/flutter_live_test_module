import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFeed(),
    );
  }
}

class ImageFeed extends StatefulWidget {
  @override
  _ImageFeedState createState() => _ImageFeedState();
}

class _ImageFeedState extends State<ImageFeed> {
  final List<String> imageUrls = [
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Image.network(
                imageUrls[index],
                width: 150.0,
                height: 150.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
