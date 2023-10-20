import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/other/WebViewJsWidget.dart';
import 'package:learn_flutter/ui/other/WebViewWidget.dart';
import '../../widgets/WidgetsListItem.dart';
import '../other/AnimationWidget.dart';
import '../other/CanvasWidget.dart';

class Other extends StatefulWidget {
  final parentContext;

  const Other(this.parentContext, {super.key});

  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OtherHome(widget.parentContext),
    );
  }
}

class OtherHome extends StatefulWidget {
  const OtherHome(this.parentContext, {super.key});

  final parentContext;

  @override
  State<OtherHome> createState() => _OtherHomeState();
}

class _OtherHomeState extends State<OtherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        toolbarHeight: 44,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
        children: <Widget>[
          ListTile(
            title: const FListItem(title: 'Canvas'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const CanvasWidget(title: 'Canvas'),
                  ));
            },
          ),
          ListTile(
            title: const FListItem(title: 'Animation'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const AnimationWidget(title: 'Animation'),
                  ));
            },
          ),
          ListTile(
            title: const FListItem(title: 'WebView'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const WebViewWidgetPage(title: 'WebView'),
                  ));
            },
          ),
          ListTile(
            title: const FListItem(title: 'WebViewJs'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const WebViewJsWidgetPage(title: 'WebViewJs'),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
