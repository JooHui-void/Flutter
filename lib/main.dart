import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); // 앱 실행

class MyApp extends StatelessWidget { // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  @override
  Widget build(BuildContext context) { // UI를 만드는 부분.
    return new MaterialApp( // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
      title: '플러터 앱',
      home: Scaffold(
          appBar: AppBar(title: Text("앱 타이틀")), // 앱의 상단 타이틀
          body : Column(
            children:<Widget>[
              Icon(Icons.send,color:Colors.blueAccent),
              Text("나의 첫 플러터 앱"),
              Icon(Icons.videocam,color :Colors.amber)
            ]
          )
      ),
    );
  }
}