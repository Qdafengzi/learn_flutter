import 'dart:math';

import 'package:flutter/material.dart';

class CanvasWidget extends StatefulWidget {
  const CanvasWidget({super.key, required this.title});

  final String title;

  @override
  State<CanvasWidget> createState() => _CanvasWidgetState();
}

class _CanvasWidgetState extends State<CanvasWidget> {
  @override
  Widget build(BuildContext context) {
    var winH = MediaQuery.of(context).size.height;
    var winW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
         child: CustomPaint(
           size: Size(winW,winW),
           painter: MyPainter(),

         ),
        ));
  }
}

class MyPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;



  @override
  void paint(Canvas canvas, Size size) {
    // 绘制
    RRect rect = RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    _paint.color = Colors.grey;
    canvas.drawCircle(Offset(size.width/2, size.width/2), size.width/4, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
