import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/other/VideoAndAudioWidget.dart';
import 'package:learn_flutter/ui/other/WebViewJsWidget.dart';
import 'package:learn_flutter/ui/other/WebViewWidget.dart';
import '../../widgets/WidgetsListItem.dart';
import '../other/AnimationWidget.dart';
import '../other/CanvasWidget.dart';
import '../other/LottieWidget.dart';

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
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: const FListItem(title: 'Canvas'),
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
          InkWell(
            child: const FListItem(title: 'Animation'),
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
          InkWell(
            child: const FListItem(title: 'WebView'),
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
          InkWell(
            child: const FListItem(title: 'WebViewJs'),
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
          InkWell(
            child: const FListItem(title: 'audio and Video'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const VideoAndAudioWidgetPage(title: 'audio and Video'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'lottie'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const LottieWidget(title: 'lottie'),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
