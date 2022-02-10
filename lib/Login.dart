import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('로그인'),
        ),
        body: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('로그인')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '이메일',
                ),
                controller: _emailController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '이메일을 입력해주세요';
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '비밀번호',
                ),
                controller: _passwordController,
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '비밀번호를 입력해주세요';
                  }
                },
              ),
              Container(
                margin: const EdgeInsets.only(top:16.0),
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context)=>
                      //   ),
                      // );
                    }
                  },
                  child: Text('확인'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
