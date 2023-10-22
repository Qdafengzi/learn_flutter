import 'dart:math';

import 'package:flutter/material.dart';

class SeparatedListWidget extends StatefulWidget {
  const SeparatedListWidget({super.key, required this.title});

  final String title;

  @override
  State<SeparatedListWidget> createState() => _SeparatedListWidgetState();
}

class _SeparatedListWidgetState extends State<SeparatedListWidget> {
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = const Divider(
      color: Colors.blue,
    );
    Widget divider2 = const Divider(color: Colors.green);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            },
            separatorBuilder: (BuildContext context, int index) {
              return index % 2 == 0 ? divider1 : divider2;
            },
            itemCount: 100));
  }
}
