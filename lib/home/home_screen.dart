import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
=======
>>>>>>> refs/remotes/origin/develop

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var urlController = TextEditingController();
<<<<<<< HEAD
  InAppWebViewController? webViewController;
  var initialUrl = 'https://www.youtube.com/';
  var query = 'watch?v=';
=======
>>>>>>> refs/remotes/origin/develop

  void _searchBarInfo() {
    Navigator.pushReplacementNamed(context, 'webview',
        arguments: {"text": urlController.value.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              controller: urlController,
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                hintText: 'Search by Video ID',
                prefixIcon: Icon(Icons.search),
              ), // InputDecoration ), // TextField
            ),
          ),
          TextButton(
            onPressed: () => _searchBarInfo(),
<<<<<<< HEAD
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color?>(Colors.grey),
=======
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
>>>>>>> refs/remotes/origin/develop
            ),
            child: const Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
