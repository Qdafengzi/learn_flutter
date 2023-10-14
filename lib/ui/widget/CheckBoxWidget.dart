import 'dart:math';

import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key, required this.title});

  final String title;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  var checked = false;



  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Checkbox(value: checked, onChanged: (value){
              setState(() {
                checked = value!;
                print("选中的状态：$value");
              });
            }),
          ],
        ));
  }
}
