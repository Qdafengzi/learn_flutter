import 'dart:math';

import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key, required this.title});

  final String title;

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Stack(children: [
              Container(
                color: Colors.deepOrangeAccent,
                width: 300,
                height: 300,
              ),
              Container(
                color: Colors.blueAccent,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
            ]),
            const Divider(
              height: 10,
            ),
            Stack(alignment: Alignment.bottomRight, children: [
              Container(
                color: Colors.deepOrangeAccent,
                width: 300,
                height: 300,
              ),
              Container(
                color: Colors.blueAccent,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
            ])
          ],
        ));
  }
}
