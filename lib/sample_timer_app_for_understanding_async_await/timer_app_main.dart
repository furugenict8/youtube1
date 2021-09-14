// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int count = 0;

  Future<void> mainLoop() async {
    while (true) {
      //1秒待つという行為。
      //awaitをつけることにより、この処理が終わるまで次の処理には行かない。
      await Future<void>.delayed(const Duration(seconds: 1));
      //StatefulWidgetを使った場合の画面描画する処理。
      setState(() {
        count++;
        print(count);
      });
    }
  }

  //StatefulWidgetが作られたときにただ一度だけ実行される関数
  @override
  void initState() {
    super.initState();
    mainLoop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$count',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
