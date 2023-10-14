import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key, required this.title});

  final String title;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TapGestureRecognizer _recognizer = TapGestureRecognizer();

  final LongPressGestureRecognizer _longPressRecognizer =
      LongPressGestureRecognizer();

  @override
  void initState() {
    super.initState();
    _recognizer.onTap = () {
      print("recognizer");
    };
    _longPressRecognizer.onLongPress = () {
      print("_longPressRecognizer");
    };
  }

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    var value = "Flutter Compose React Native";

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(children: [
            TextField(
              onChanged: (text) {
                value = text;
              },
              maxLines: 1,
              maxLength: 100,
              cursorColor: Colors.indigoAccent,
              cursorHeight: 20,
              cursorRadius: const Radius.circular(1),
              cursorWidth: 4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: "请输入文字",
                hintMaxLines: 1,
              ),
            // obscureText: true,//密码输入



            )
          ]),
        ));
  }
}
