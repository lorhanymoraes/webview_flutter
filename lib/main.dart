import 'package:flutter/material.dart';
import 'package:webview_youtube/webview/webview_screen.dart';
import 'home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube CV',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHomePage(),
        'webview': (context) => const WebViewScreen()
      },
    );
  }
}
