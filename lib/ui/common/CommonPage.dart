import 'package:flutter/material.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key, required this.title});

  final String title;

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  void _incrementCounter() {
    //返回上一页并且 带 参数
    Navigator.pop(context, "我是返回结果");
  }

  @override
  Widget build(BuildContext context) {
    //静态路由 传递参数后 接收参数
    var title = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              // widget.title,
              title.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}