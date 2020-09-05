import 'dart:ui';

import "package:flutter/material.dart";

// import 'package:flutter/material.dart':
// ma略

// st略。パイプにクラス名で下記二箇所に自動反映される。
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // _でprivate、他のクラスからアクセス不可
  String _textHeader = "あなたの名前を教えて！";
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Container();
    // f4チェック->選んで略をうちエンターして()して中身欲しい物
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutterへの挑戦v3"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        // padding: EdgeInsets.only(top: 100.0, right: 0.0, bottom: 100.0, left: 150.0 ),
        child: Column(
          children: <Widget>[
            // Text(""),
            // option*return ->centerにしたいので、text選択してコマンド
            Center(
              child: Text(
                // "あなたの名前はーーーーsodaaー？",
                _textHeader,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: null, // TODO: 入力した文字を管理スつTextCont
            ),
            // image.assetにサイズ導入したいのでwidgetで囲みたくopt*ret
            // Expanded(child: Image.asset("assets/images/hello.png")),
            Expanded(child: Container()),
            // f4して@requiredがあったら絶対記載しないといけな属性
            // opt*ret ->sizedBox挿入して、ボタンのサイズ変更へ
            SizedBox(
              // 幅無限大＝親のサイズ
              width: double.infinity,
              child: RaisedButton(
                // onPressed: null, // TODO:
                onPressed: () => _onClick(),
                child: Text(
                  "プッシュここ",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
          // option*comm*shift*L ->コード成形
        ),
      ),
    );
  }

  // voidの場合は書いても書かなくても良い
  void _onClick() {
    // 文字
    var inputText = _textEditingController.text;
    _textHeader = "Hello. $inputTextさん";

    // 画像
  }
}

// comm*s = ホットリロード
// スキューモフィズム（GUIへ）→フラットデザイン（シンプル画面）→
// →マテリアルデザイン（GUIかつシンプル）でわかりやすく。物理法則を導入して人間の脳への負担をなくしたいGoogle→MaterialAppに集約
