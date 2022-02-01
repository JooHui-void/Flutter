import 'package:flutter/material.dart';
import 'package:untitled/Variable%20view.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
    );
  }

}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
enum Gender{Man,Woman}


class _MyHomePageState extends State<MyHomePage> {
  Gender _gender=Gender.Man;
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),

      ),
      body: Center(
        child:
        Column(
          children: [
            RaisedButton(
              child:Text('RaisedButton'),
              color: Colors.orange,
              onPressed:(){

              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '여기에 입력하세요',
                border:OutlineInputBorder(),
              ),
            ),
            ListTile(
              title:Text('Man'),
              leading:Radio(
                value:Gender.Man,
                groupValue: _gender,
                onChanged:(value){
                  _gender=Gender.Man;
                },
              ),
            ),
            ListTile(
              title:Text('Woman'),
              leading:Radio(
                value:Gender.Woman,
                groupValue: _gender,
                onChanged:(value){
                  setState(() {
                    _gender=Gender.Woman;
                  });
                },
              ),
            ),
            Checkbox(
              value:isChecked,
              onChanged: (value){
                setState(() {
                  if(isChecked==true){
                    isChecked=false;
                  }else{
                    isChecked=true;
                  }
                });
              },

            )
          ],



        ),
      )
    );
  }
}
