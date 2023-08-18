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

  var initialUrl = 'https://www.youtube.com/';
  var query = 'watch?v=';
  var isloading = false;

  @override
  void initState() {
    super.initState();
    refreshController = PullToRefreshController(
        onRefresh: () {
          webViewController?.reload();
        },
        options: PullToRefreshOptions(
          color: Colors.green,
          backgroundColor: Colors.white,
        ));
  }

  @override
  Widget build(BuildContext context) {
    dynamic dataHome = ModalRoute.of(context)?.settings.arguments;

    Uri url = dataHome["text"] == ""
        ? Uri.parse(initialUrl)
        : Uri.parse('$initialUrl$query${dataHome["text"]}');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'home');
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                InAppWebView(
                  onWebViewCreated: (controller) =>
                      webViewController = controller,
                  initialUrlRequest: URLRequest(url: url),
                  pullToRefreshController: refreshController,
                  onLoadStart: (controller, url) {
                    var v = url.toString();
                    debugPrint("onLoadStart callback - youtube url: $v");
                    isloading = true;
                    setState(() {});
                  },
                  onLoadStop: (controller, url) {
                    refreshController?.endRefreshing();
                    isloading = false;
                    setState(() {});
                  },
                ),
                Visibility(
                    visible: isloading,
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                    ))
              ],
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
