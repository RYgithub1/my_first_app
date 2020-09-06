import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());
// 一文ゆえ上記省略形。下記が標準形で、型widgetつけてメソッドbuild(){}と同じ。
// void main(){
//   runApp(MyApp())
// }:

// st略。クラスゆえ設計図に過ぎない。インスタンス作らんと物体がない
class MyApp extends StatelessWidget {
  @override
  // buildはMyAppの関数defみたいな。classの中にあるものをメソッド、外にあるvoid系を関数と言う
  // widjetは戻り値の型。見た目を決めるパーツwidget（見た目に関わる全てはwidgetを使う）。
  // 全てのwidgetは状態持つ、持たないに分かれる
  // build(引数インプット値パラメータ)
  Widget build(BuildContext context) {
    // コンストラクタに引数いくつか指定。クラス（ただの設計図）。メソッドとプロパティ定義。F４吹っ飛ぶ！
    return MaterialApp(
      // returnの中身が戻り値としてアウトプットするもの
      title: "Flutterゴーゴー！",
      // 一つの画面でなく、アプリ全体に関わる項目ゆえ、main.dart)MaterialAppをチェックして修正
      // MaterialAppでf4）this.debugShowCheckedModeBanner = true,。Falseにして不要バナー消す
      debugShowCheckedModeBanner: false,

      // ダークテーマにしたい）共通項目ゆえここ）F4してtheme見つけてthemeでF4で使い方みる。dark or light
      theme: ThemeData.dark(),

      // homeはホーム画面
      // 赤波線にoption*returnでimport推測
      home: HomeScreen(),
    );
  }
}
