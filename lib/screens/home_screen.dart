import 'dart:ui';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
// import 'package:flutter/material.dart':
// ma略

// st略。パイプにクラス名で下記二箇所に自動反映される。
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // _でprivate、他のクラスからアクセス不可。=は代入、等号でない。
<<<<<<< HEAD
  String _textHeader = "Cupertino App";
=======
  String _textHeader = "あなたの名前を教えて！";
>>>>>>> 8dd30a24ffcc7c55a8322ebf1569a7f91708b5cf
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    // return Container();
    // f4チェック->選んで略をうちエンターして()して中身欲しい物
<<<<<<< HEAD
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Flutter挑戦_cupertino"),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8.0),
          // padding: EdgeInsets.only(top: 100.0, right: 0.0, bottom: 100.0, left: 150.0 ),
          child: Column(
            children: <Widget>[
              // Text(""),
              // option*return ->centerにしたいので、Wrap ->text選択してコマンド
              Center(
                child: Text(
                  // "あなたの名前はーーーーsodaaー？",
                  _textHeader,
=======
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter挑戦v3_iOSAndroid実機2台検証完了"),
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
              // controller: null, // TODO: 入力した文字を管理するに変数指定、TextCont
              controller: _textEditingController,
            ),
            // image.assetにサイズ導入したいのでwidgetで囲みたくopt*ret
            // Expanded(child: Image.asset("assets/images/hello.png")),
            // Expanded(child: Container()),
            Expanded(child: _imageWidget),
            // f4して@requiredがあったら絶対記載しないといけな属性
            // opt*ret ->sizedBox挿入して、ボタンのサイズ変更へ
            SizedBox(
              // 幅無限大＝親のサイズ
              width: double.infinity,
              child: RaisedButton(
                // onPressed: null, // TODO:
                onPressed: () => _onClick(),
                child: Text(
                  "プッシュここさ",
>>>>>>> 8dd30a24ffcc7c55a8322ebf1569a7f91708b5cf
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              CupertinoTextField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20.0),
                // controller: null, // TODO: 入力した文字を管理するに変数指定、TextCont
                controller: _textEditingController,
              ),
              // image.assetにサイズ導入したいのでwidgetで囲みたくopt*ret
              // Expanded(child: Image.asset("assets/images/hello.png")),
              // Expanded(child: Container()),
              Expanded(child: _imageWidget),
              // f4して@requiredがあったら絶対記載しないといけな属性
              // opt*ret ->sizedBox挿入して、ボタンのサイズ変更へ
              SizedBox(
                // 幅無限大＝親のサイズ
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.orange,
                  // onPressed: null, // TODO:
                  onPressed: () => _onClick(),
                  child: Text(
                    "CupertinoApp push",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
            // option*comm*shift*L ->コード成形
          ),
        ),
      ),
    );
  }

  // voidの場合は書いても書かなくても良い
  void _onClick() {
<<<<<<< HEAD
    // ボタン押して、状態が変化した事を反映するならsetState。setStateによりbuild()が動き画面が更新される
=======
    // ボタン押して、状態が変化した事を反映するならsetState。setStateによりbuild()がまわり画面が更新される
>>>>>>> 8dd30a24ffcc7c55a8322ebf1569a7f91708b5cf
    // 変更した変数をもった状態で、build()で書き直して画面全体を変える、のがflutter。statefulならsetState()
    setState(() {
      // 文字
      // ローカル変数はvar、複数クラスへグローバル変数ならString
      var inputText = _textEditingController.text;
      _textHeader = "Hello.$inputTextさん";

      // 画像
      _imageWidget = Image.asset("assets/images/hello.png");
      // Image.network()だけでオンライン画像をもってこれちゃう
      // _imageWidget = Image.network("https://pixabay.com/ja/photos/%E3%82%AB%E3%83%A1-%E6%B3%B3%E3%81%90-%E3%82%A6%E3%83%9F%E3%82%AC%E3%83%A1-863336/");
    });
  }
}

// comm*s = ホットリロード
// スキューモフィズム（GUIへ）→フラットデザイン（シンプル画面）→
// →マテリアルデザイン（GUIかつシンプル）でわかりやすく。物理法則を導入して人間の脳への負担をなくしたいGoogle→MaterialAppに集約
<<<<<<< HEAD
// 動かす前にやろう ①キャッシュ消す % flutter clean  ②shift*comm*opt*L リフォーマット
=======
// 動かす前にやろう ①キャッシュ消す% flutter clean  ②shift*comm*opt*L リフォーマット
>>>>>>> 8dd30a24ffcc7c55a8322ebf1569a7f91708b5cf
// iOS)Flutter右クリ)Flutterでopen iOS module)xCode開いて実機選択してrun