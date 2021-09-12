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
          leading: Icon(Icons.more_vert),
          title: const Text('超いけてるKBOYのFlutter大学'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: '作成',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.video_call_outlined),
              tooltip: '作成',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.apps),
              tooltip: 'youtubeアプリ',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none),
              tooltip: '通知',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              tooltip: '通知',
              onPressed: () {
                // handle the press
              },
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
