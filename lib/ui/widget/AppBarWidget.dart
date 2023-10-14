import 'dart:math';

import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            AppBar(
              title: const Text("title"),
              leading: const Icon(Icons.menu),
              leadingWidth: 50,
              actions: const [
                Text("action"),
                Icon(Icons.add)
              ],
              backgroundColor: Colors.deepPurpleAccent,
              elevation: 10,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            AppBar(
              title: const Text("title"),
              actions: const [
                Icon(Icons.markunread_outlined)
              ],
              backgroundColor: Colors.green,
              elevation: 10,
              centerTitle: true,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            const BottomAppBar(
              color: Colors.lightGreen,
              elevation: 20,
              shadowColor: Colors.pink,
              notchMargin: 10,
              padding: EdgeInsets.all(4),
              surfaceTintColor: Colors.blue,
              height: 50,
              child: Text("data"),
            ),


          ],
        )
    );
  }
}
