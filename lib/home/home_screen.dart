import 'package:flutter/material.dart';
import '../search_bar.dart';
import '../webview/webview_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  'Youtube CV',
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
        children: <Widget>[
          SearchBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => WebView(
                title: 'Vídeo',
              ),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
