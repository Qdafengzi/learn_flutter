import 'dart:math';

import 'package:flutter/material.dart';

class ShapeWidget extends StatefulWidget {
  const ShapeWidget({super.key, required this.title});

  final String title;

  @override
  State<ShapeWidget> createState() => _ShapeWidgetState();
}

class _ShapeWidgetState extends State<ShapeWidget> {
  @override
  Widget build(BuildContext context) {
    var winW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          Container(
            width:winW ,
            height: winW,
            // color: Colors.blueAccent,
            margin: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
//背景
              color: Colors.blueAccent,
                            //设置四周圆角 角度
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              //设置四周边框
              // border: Border.all(width: 2, color: Colors.red),


            ),

            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          )
        ],));
  }
}
