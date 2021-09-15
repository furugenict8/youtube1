import 'package:flutter/material.dart';
import 'package:youtube1app/video_detail_page.dart';

void main() {
  runApp(App()); //App classのインスタンスを引数に動く関数runApp()
}

class App extends StatelessWidget {
  //appBarのaction buttonsのSizedBoxの幅　の変数sizeBoxWidthを作っておく。
  double _sizeBoxWidth = 40;

  //ListViewで使う変数items
  final items = List<String>.generate(10000, (i) => "Item $i");

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(
                          "https://yt3.ggpht.com/Acyl-4aTTupNoyoxGGRVoC46a-cxqDk1_SC1JiuV-_XeHSeZBZqNJCjLlekP85t7Iw1qqp5aSA=s88-c-k-c0x00ffffff-no-rj"),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: <Widget>[
                        const Text(
                          "KboyのFlutter大学",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              //登録画面へ飛ぶ
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.video_call_outlined,
                                  color: Colors.blue,
                                ),
                                Text("登録する",
                                    style: TextStyle(color: Colors.black))
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      //async awaitについて
                      // 無名関数にasync awaitを使う場合は戻り値の型も書かなくてこういう書き方ができるみたい。
                      //通常のFunctionなりmethodなりにつけるばあいはFuture<void>を戻り値で指定しないといけいないはず。
                      //ここではonTap()がされた場合、Navigator.push()処理が終わるまで次の処理にすすまないって意味
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          "https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAmjUdKEw-jfDH8nwyy3_F1VMXlfw"),
                      title: Column(
                        children: [
                          Text(
                            '[Flutter大学超入門] リストを作る方法',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '245回再生',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '5日前',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
