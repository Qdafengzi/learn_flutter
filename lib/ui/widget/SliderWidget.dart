import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key, required this.title});

  final String title;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  var value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Slider(
              value: value,
              max: 100,
              min: 1,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
              activeColor: Colors.lightGreen,
              thumbColor: Colors.indigo,
              label: "$value",
              divisions: 5,
              secondaryActiveColor: Colors.pink,
            ),
          ],
        ));
  }
}
