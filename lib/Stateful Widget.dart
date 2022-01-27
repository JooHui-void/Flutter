import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); // 앱 실행

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  int counter =0;

  void increaseCounter(){
    setState(() {
      counter++;
    });
  }

  void decreaseCounter(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "첫 Stateful App",
      home: Scaffold(
        appBar: AppBar(
          title:Text("내 Stateful widget"),

        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                "$counter",
                style:TextStyle(fontSize:160.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  RaisedButton(
                    child:Text(
                      "Add",
                      style:TextStyle(color:Colors.white),
                    ),
                    color:Colors.red,
                    onPressed:(){
                      increaseCounter();
                    },
                  ),
                  RaisedButton(
                    child:Text(
                      "subtract",
                      style:TextStyle(color:Colors.white),
                    ),
                    color:Colors.blue,
                    onPressed:(){
                      decreaseCounter();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
