import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageStatefull(),
    );
  }
}

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePageStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Floating Nested SliverAppBar'),
              floating: false,
              expandedHeight: 200.0,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 80.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Text(
                          index <= 8 ? "0${index + 1} " : "${index + 1}",
                          style: TextStyle(
                              color: index <= 2
                                  ? Color(0xffBF8877)
                                  : Color(0xffB5BEB7),
                              decoration: TextDecoration.underline)),
                    ),
                    Image.asset("images/ic_avatar.png", fit: BoxFit.fill,),
                    SizedBox(width: 8.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Thánh Gióng - Truyện cổ tích...", style: TextStyle(fontSize: 14.0)),
                            if (index == 0) Image.asset("images/ic_vip.png")
                          ],
                        ),
                        Container(margin: EdgeInsets.only(top: 4), child: Text("Thể loại : Truyện cổ tích", style: TextStyle(fontSize: 10.0)),),
                        Container(margin: EdgeInsets.only(top: 4), child: Text("Lượt nghe : 1511", style: TextStyle(fontSize: 10.0),),)
                      ],
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
