import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key, required this.title});

  final String title;

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.indigo,
                    height: 30,
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
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
