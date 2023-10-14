import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key, required this.title});

  final String title;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
   final TapGestureRecognizer _recognizer = TapGestureRecognizer();

   final LongPressGestureRecognizer  _longPressRecognizer = LongPressGestureRecognizer();

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
    var str = "Flutter Compose React Native";
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                Text(
                  str,
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  str,
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  str,
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  str,
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                ),
                RichText(
                    text: TextSpan(
                        text: '多种样式，如：',
                        style: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Flutter',
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.red),
                            recognizer: _recognizer,
                          ),
                          const TextSpan(
                              text: 'Dart',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.green)),
                          const TextSpan(
                              text: 'Java',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.blue)),
                          const TextSpan(
                              text: 'Kotlin',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white)),
                          const TextSpan(
                              text: 'C++',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.purple)),
                          const TextSpan(
                              text: 'Rust',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black))
                        ]),
                    textAlign: TextAlign.center),
                Text.rich(
                  TextSpan(
                    text: 'Can you ',
                    style: const TextStyle(color: Colors.black),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'find the',
                        style: const TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                        ),
                        recognizer: _longPressRecognizer,
                        mouseCursor: SystemMouseCursors.precise,
                      ),
                      const TextSpan(
                        text: ' secret?',
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
