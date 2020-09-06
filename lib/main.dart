import 'package:flutter/cupertino.dart';
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
  // widgetは戻り値の型。見た目を決めるパーツwidget（見た目に関わる全てはwidgetを使う）。
  // 全てのwidgetは状態持つ、持たないに分かれる
  // build(引数インプット値パラメータ)
  Widget build(BuildContext context) {
    // コンストラクタに引数いくつか指定。クラス（ただの設計図）。メソッドとプロパティ定義。F４吹っ飛ぶ！
    return CupertinoApp(
      title: "CupertinoApp！",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
