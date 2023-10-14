import 'dart:math';

import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key, required this.title});

  final String title;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  ),
                  fit: BoxFit.fill,
                  height: 300,
                  width: 300,
                ),
                Image.asset(
                  "images/ic_flutter.png",
                  width: 50,
                  height: 50,
                ),
                Image.asset('flutter_logo.png', package: 'flutter_icons')
              ],
            )));
  }
}
