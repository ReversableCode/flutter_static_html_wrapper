import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:local_assets_server/local_assets_server.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Html Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewController controller;
  bool isListening = false;
  String address;
  int port;

  @override
  initState() {
    _initServer();
    super.initState();
  }

  _initServer() async {
    final server = new LocalAssetsServer(
      address: InternetAddress.loopbackIPv4,
      assetsBasePath: 'assets',
    );

    final address = await server.serve();

    setState(() {
      this.address = address.address;
      port = server.boundPort;
      isListening = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isListening
          ? WebView(
              debuggingEnabled: false,
              initialUrl: 'http://$address:$port',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController controller) {
                this.controller = controller;
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
