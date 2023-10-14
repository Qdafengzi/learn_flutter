import 'dart:math';

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key, required this.title});

  final String title;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            semanticLabel: "semanticLabel",
            backgroundColor: Colors.indigo,
            elevation: 4,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Drawer"),
                leadingWidth: 100,
                leading: const Icon(Icons.person_pin),
              ),
              body: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                  Center(child: Text("data"),),
                ],
              ),
            )),
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            CloseButton()
          ],

        ),
        body: const Center(
          child:
            Text("Drawer"),

        ));
  }
}
