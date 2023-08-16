import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewState();
}

class _WebViewState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;
  late var url;
  double progress = 0;
  var urlController = TextEditingController();
  var initialUrl = 'https://www.youtube.com/';
  var query = 'watch?v=';

  @override
  Widget build(BuildContext context) {
    Map? dataHome = ModalRoute.of(context)?.settings.arguments as Map?;
    String data = dataHome?['text'];
    url = Uri.parse('$initialUrl$query$data');
    print(url);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'home');
            ;
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/logo_cv.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: InAppWebView(
            onWebViewCreated: (controller) => webViewController = controller,
            initialUrlRequest: URLRequest(url: url),
          ))
          //   SearchBar(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
