import 'dart:math';

import 'package:flutter/material.dart';

class BuildListWidget extends StatefulWidget {
  const BuildListWidget({super.key, required this.title});

  final String title;

  @override
  State<BuildListWidget> createState() => _BuildListWidgetState();
}

class _BuildListWidgetState extends State<BuildListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            }));
  }
}
