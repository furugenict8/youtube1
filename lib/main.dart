import 'package:flutter/material.dart';

void main() {
  runApp(App()); //App classのインスタンスを引数に動く関数runApp()
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('超いけてるKBOYのFlutter大学'),
        ),
        body: Container(),
      ),
    );
  }
}
