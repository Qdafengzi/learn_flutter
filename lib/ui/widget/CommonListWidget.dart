import 'dart:math';

import 'package:flutter/material.dart';

class CommonListWidget extends StatefulWidget {
  const CommonListWidget({super.key, required this.title});

  final String title;

  @override
  State<CommonListWidget> createState() => _CommonListWidgetState();
}

class _CommonListWidgetState extends State<CommonListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: const <Widget>[
            Text('列表1'),
            Text('列表2'),
            Text('列表3'),
            Text('列表4'),
            Text('列表5'),
            Text('列表6'),
            Text('列表7'),
            Text('列表8'),
            Text('Domestic life was never quite my style'),
            Text('When you smile, you knock me out, I fall apart'),
            Text('And I thought I was so smart'),
          ],
        ));
  }
}
