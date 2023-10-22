import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/widget/RefreshListWidget.dart';

import 'BuildListWidget.dart';
import 'CommonListWidget.dart';
import 'SeparatedListWidget.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key, required this.title});

  final String title;

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const CommonListWidget(title: 'common List'),
                        ));
                  },
                  child: const Text("common List")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const BuildListWidget(title: 'build List'),
                        ));
                  },
                  child: const Text("build List")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SeparatedListWidget(
                                  title: 'Separated List'),
                        ));
                  },
                  child: const Text("Separated List")),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const RefreshListWidget(
                              title: 'refresh List'),
                        ));
                  },
                  child: const Text("refresh List")),
            ],
          ),
        ));
  }
}
