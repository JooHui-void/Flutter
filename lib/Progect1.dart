import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main()=> runApp(MyApp());
final images=[
  'https://file.mk.co.kr/meet/neds/2021/06/image_readtop_2021_535745_16226846584668330.jpg',
  'https://file.mk.co.kr/meet/neds/2021/06/image_readtop_2021_535745_16226846584668330.jpg',
  'https://file.mk.co.kr/meet/neds/2021/06/image_readtop_2021_535745_16226846584668330.jpg',
];
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }
  Widget _buildTop(){
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom:20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시',style: TextStyle(
                      fontSize: 10,
                    ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시',style: TextStyle(
                      fontSize: 10,
                    ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시',style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시',style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시',style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시',style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시',style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시',style: TextStyle(
                      fontSize: 10,
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildMiddle(){
    return CarouselSlider(

      options: CarouselOptions(height: 150.0),

      items: images.map((url){
        return Builder(
          builder:(BuildContext context){
            return Container(
              margin:EdgeInsets.symmetric(horizontal: 10.0),
              width:MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  url,
                  fit:BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),

    );
  }
  Widget _buildBottom(){
    final items=List.generate(10,(i){
      return ListTile(
        leading:Icon(Icons.notifications_none),
        title:Text('이것은 공지사항입니다.'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),//스크롤 동작 금지
      shrinkWrap: true,//다른 스크롤 안에 잇음
      children: items,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('페이지2',
        style:TextStyle(fontSize: 40),),
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('페이지3',
        style:TextStyle(fontSize: 40),),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter',
      theme: ThemeData(

      ),
      home:HomePage(),
    );
  }

}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index=0;
  var _pages=[
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: <Widget>[
         
          IconButton(
            icon:Icon(
              Icons.add,
              color: Colors.black,
              size: 40,

            ),
            onPressed: (){},
          ),
        ],
        title:Text('앱UI',
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index=index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text('홈'),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.assignment),
            title:Text('홈'),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_circle),
            title:Text('홈'),
          ),
        ],
      ),
    );
  }
}

