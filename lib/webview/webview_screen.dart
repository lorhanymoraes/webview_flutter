import 'package:flutter/material.dart';

class WebView extends StatefulWidget {
  const WebView({super.key, required this.title});

  final String title;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      appBar: AppBar(
        leading: Container(),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Vídeo',
                  textAlign: TextAlign.justify,
                ),
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
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // children: <Widget>[
        //   SearchBar(),
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
