import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidgetPage extends StatefulWidget {
  const WebViewWidgetPage({super.key, required this.title});

  final String title;

  @override
  State<WebViewWidgetPage> createState() => _WebViewWidgetPageState();
}

class _WebViewWidgetPageState extends State<WebViewWidgetPage> {
  late final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          print("progress:$progress");
          print("platform:${_controller.platform}");

          // Update loading bar.
        },
        onPageStarted: (String url) {
          print("onPageStarted:onPageStarted");
        },
        onPageFinished: (String url) {
          print("onPageFinished");
        },
        onWebResourceError: (WebResourceError error) {
          print("onWebResourceError");
        },
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.baidu.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://www.baidu.com'));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Simple Example')),
      body:  WebViewWidget(controller: _controller),
    );
  }
}
