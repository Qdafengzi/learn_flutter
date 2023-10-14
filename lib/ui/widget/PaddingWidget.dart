import 'dart:math';

import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key, required this.title});

  final String title;

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            const Text("Padding"),
            Container(
                color: Colors.deepOrangeAccent,
                width: 100,
                height: 100,
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.green,
                  width: 60,
                  height: 60,
                ) ,
            ),
            const Divider(
              height: 10,
            ),
            Container(
              color: Colors.deepOrangeAccent,
              width: 100,
              height: 100,
              padding: const EdgeInsets.only(right :10,bottom: 10),
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.green,
                width: 60,
                height: 60,
              ) ,
            ),
            const Divider(
              height: 10,
            ),
            const Text("Margin"),

            Container(
              color: Colors.deepOrangeAccent,
              height: 100,
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.green,
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(left :10,top: 10),
              ) ,
            ),
            const Divider(
              height: 10,
            ),
            Container(
              color: Colors.deepOrangeAccent,
              height: 100,
              margin: const EdgeInsets.only(right :10,bottom: 10),
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.green,
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(right :10,bottom: 10),
              ) ,
            ),
            const Divider(
              height: 10,
            ),

          ],
        ));
  }
}
