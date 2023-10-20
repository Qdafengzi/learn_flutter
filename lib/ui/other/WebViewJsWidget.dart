import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewJsWidgetPage extends StatefulWidget {
  const WebViewJsWidgetPage({super.key, required this.title});

  final String title;

  @override
  State<WebViewJsWidgetPage> createState() => _WebViewJsWidgetPageState();
}

class _WebViewJsWidgetPageState extends State<WebViewJsWidgetPage> {
  final Logger logger = Logger();
  late final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..clearCache()
    ..addJavaScriptChannel('js_call_flutter', onMessageReceived: (message) {
      logger.i("js_call_flutter:${message.message}");
    })
    ..addJavaScriptChannel('FlutterToast', onMessageReceived: (message) {
      logger.i("FlutterToast:${message.message}");
    })
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          logger.i("progress:$progress");
          logger.i("platform:${_controller.platform}");

          // Update loading bar.
        },
        onPageStarted: (String url) {
          logger.i("onPageStarted:onPageStarted");
        },
        onPageFinished: (String url) {
          logger.i("onPageFinished");
          //调用JS方法，获取页面的标题

          var title =
              _controller.runJavaScriptReturningResult('document.title');
          logger.i("title:$title");
        },
        onWebResourceError: (WebResourceError error) {
          logger.i("onWebResourceError");
        },
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.baidu.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
        onUrlChange: (UrlChange change) {},
      ),
    )
    ..loadFlutterAsset("asset/index.html");

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("WebViewJs"),
        ),
        child: Column(
          children: [
            const Divider(
              height: 300,
            ),
            ElevatedButton(
                onPressed: () {
                  //这个是实现了Flutter控制了H5页面文本的显示
                  _controller.runJavaScript("CallJsNoResult('CallJsNoResult')");
                },
                child: const Text("调用js 无返回值")),
            ElevatedButton(
                onPressed: () {
                  //这个是实现了Flutter控制了H5页面文本的显示
                  _controller
                      .runJavaScriptReturningResult("CallJs('CallJs')")
                      .then((value) {
                    logger.i(value.toString());
                  });
                },
                child: const Text("调用js 有返回值 看日志")),
            const Text("下面是WebView"),
            AspectRatio(
              aspectRatio: 1 / 2,
              child: WebViewWidget(controller: _controller),
            ),
          ],
        ));
  }
}
