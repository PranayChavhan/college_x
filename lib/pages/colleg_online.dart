import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../constraints.dart';

class CollegeOnline extends StatefulWidget {
  const CollegeOnline({Key? key}) : super(key: key);

  @override
  _CollegeOnlineState createState() => _CollegeOnlineState();
}

class _CollegeOnlineState extends State<CollegeOnline> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ColorConstants.kLightColor,
        body: WebView(
      initialUrl: "https://www.gpnagpur.ac.in/gpn/",
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _webViewController = webViewController;
        _controller.complete(webViewController);
      },
      onProgress: (int progress) {},
      javascriptChannels: <JavascriptChannel>{
        _toasterJavascriptChannel(context),
      },
      onPageFinished: (String url) {
        _webViewController
            .evaluateJavascript("javascript:(function() { " +
                // "var head = document.getElementsByTagName('header')[0];" +
                // "head.parentNode.removeChild(head);" +
                "var footer = document.getElementsByTagName('footer')[0];" +
                "footer.parentNode.removeChild(footer);" +
                "})()")
            .then((value) => debugPrint('Page finished loading Javascript'))
            .catchError((onError) => debugPrint('$onError'));
      },
      gestureNavigationEnabled: true,
    ));
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
