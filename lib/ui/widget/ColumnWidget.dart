import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key, required this.title});

  final String title;

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
