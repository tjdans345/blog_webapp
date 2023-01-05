import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = "https://blog.codefactory.ai";

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Code Factory!!!"),
          backgroundColor: Colors.orange,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  // http://
                  // https://
                  if(controller == null) {
                    return;
                  }
                  controller!.loadUrl(homeUrl);
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: homeUrl,
          javascriptMode:
              JavascriptMode.unrestricted, // default 는 자바스크립트를 사용 안하는 모드임
        ));
  }
}
