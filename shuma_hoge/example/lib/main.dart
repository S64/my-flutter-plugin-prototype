import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shuma_hoge/shuma_hoge.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  static final ShumaHoge plugin = ShumaHoge();

  String? _myMessage;

  @override
  void initState() {
    super.initState();
    initMyMessage();
  }

  Future<void> initMyMessage() async {
    ShumaHogeModel hoge = await plugin.hoge;

    if (!mounted) {
      return;
    }

    setState(() {
      _myMessage = hoge.myMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(_myMessage != null ? _myMessage! : 'Initializing...'),
        ),
      ),
    );
  }

}
