import 'dart:math';

import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key, required this.title});

  final String title;

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  var snackBar = const SnackBar(
    content: Text('Yay! A SnackBar!'),
  );
  var snackBarTwo = const SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text("Hello"), Icon(Icons.accessible_forward)],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Snack one')),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(snackBarTwo);
                  },
                  child: const Text('Snack Two'))
            ],
          ),
        ));
  }
}
