import 'package:flutter/material.dart';

void main() {
  runApp(App()); //App classのインスタンスを引数に動く関数runApp()
}

class App extends StatelessWidget {
  //appBarのaction buttonsのSizedBoxの幅　の変数sizeBoxWidthを作っておく。
  double _sizeBoxWidth = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.more_vert),
          title: const Text('超いけてるKBOYのFlutter大学'),
          actions: [
            SizedBox(
              width: _sizeBoxWidth,
              child: IconButton(
                icon: const Icon(Icons.search),
                tooltip: '作成',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
            SizedBox(
              width: _sizeBoxWidth,
              child: IconButton(
                icon: const Icon(Icons.video_call_outlined),
                tooltip: '作成',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
            SizedBox(
              width: _sizeBoxWidth,
              child: IconButton(
                icon: const Icon(Icons.apps),
                tooltip: 'youtubeアプリ',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
            SizedBox(
              width: _sizeBoxWidth,
              child: IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: '通知',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
            SizedBox(
              width: _sizeBoxWidth,
              child: IconButton(
                icon: const Icon(Icons.account_circle),
                tooltip: '通知',
                onPressed: () {
                  // handle the press
                },
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                      "https://yt3.ggpht.com/Acyl-4aTTupNoyoxGGRVoC46a-cxqDk1_SC1JiuV-_XeHSeZBZqNJCjLlekP85t7Iw1qqp5aSA=s88-c-k-c0x00ffffff-no-rj"),
                  Column(
                    children: <Widget>[
                      const Text("KboyのFlutter大学"),
                      IconButton(
                        onPressed: () {
                          //登録画面へ繊維
                        },
                        icon:
                            Icon(Icons.video_call_outlined, color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
