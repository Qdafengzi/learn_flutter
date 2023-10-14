import 'dart:math';

import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key, required this.title});

  final String title;

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            children: List.generate(100, (i) {
              return Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, random.nextInt(255),random.nextInt(255), random.nextInt(255),),
                height: 50,
                width: random.nextInt(100).toDouble(),
                child: Text('$i'),
              );
            })));
  }
}
