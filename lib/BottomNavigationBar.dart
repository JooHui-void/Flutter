import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BottomNavigaionBar'),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index=index;
          });
        },
        items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          title:Text('Home'),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.person),
          title:Text('Prfile'),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.notifications),
          title:Text('Notification'),
        ),
      ],),
      body: Center(
        child: _Options.elementAt(_index),
      ),
    );


  }
  List _Options=[
        Container(
          color: Colors.black,
          child:
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation:10,

          ),
          width: 400,
          height:400,
          padding: const EdgeInsets.all(8.0),
        ),

    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.green,
    ),

  ];
}
