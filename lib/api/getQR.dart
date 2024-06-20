import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class getQR extends StatefulWidget {
  const getQR({super.key});

  @override
  State<getQR> createState() => _getQRState();
}

class _getQRState extends State<getQR> {
  final getListView = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse('https://www.youtube.com/watch?v=7u4g483WTzw')); 

  @override
  void initState() {
    super.initState();
    print(getListView);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: getListView,
      ),
    );

  }
}