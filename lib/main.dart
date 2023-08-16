import 'package:flutter/material.dart';
import 'package:webview_youtube/webview/webview_screen.dart';
import 'home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube CV',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => MyHomePage(title: 'Vídeo'),
        'webview': (context) => WebViewScreen()
      },
      // home: const MyHomePage(title: 'Youtube CV'),
    );
  }
}
