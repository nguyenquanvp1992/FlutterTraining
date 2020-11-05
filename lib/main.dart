import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Nguyen Quan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                child: Image.asset(
                  "images/bg_login_layer_1.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 53),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "images/bg_login_layer_2.png",
                    alignment: Alignment.center,
                    fit: BoxFit.fitWidth,
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 14.0),
            child: Text("Truyện Cổ Tích Audio",
                style: TextStyle(fontFamily: 'pacifico', fontSize: 24.0)),
          ),
          Container(
            height: 44.0,
            width: 320.0,
            margin: EdgeInsets.only(top: 38.0, left: 20.0, right: 20.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff1E562A), borderRadius: BorderRadius.circular(20.0)),
            child: Text(
              "Facebook",
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ),
          ),
          Container(
            height: 44.0,
            width: 320.0,
            margin: EdgeInsets.only(top: 5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all(color: Color(0xff1E562A)), borderRadius: BorderRadius.circular(20.0)),
            child: Text(
              "Google",
              style: TextStyle(color: Color(0xff1E562A), fontSize: 19.0),
            )
          ),
          Container(
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Điều khoản",
                      style: TextStyle(color: Color(0xffAB3611), fontSize: 10.0),
                    ),
                    Text(
                      " người dùng và ",
                      style: TextStyle(color: Color(0xff0F0F0F), fontSize: 10.0),
                    ),
                    Text(
                      "bảo mật",
                      style: TextStyle(color: Color(0xffAB3611), fontSize: 10.0),
                    ),
                    Text(
                      " thông tin",
                      style: TextStyle(color: Color(0xff0F0F0F), fontSize: 10.0),
                    )
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
