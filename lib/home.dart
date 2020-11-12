import 'package:flutter/material.dart';

import 'package:flutter_app1/Detail.dart';

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
      routes: <String, WidgetBuilder> {
        Detail.route : (BuildContext context) => Detail()
      },
    );
  }
}

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

final List<Person> datas = List<Person>.generate(
    10, (index) => Person(id: index, name: "Item ${index + 1}"));

class HomePageState extends State<HomePageStatefull> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () => {
                  if ( index % 2 == 0) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail()))
                  } else {
                    navigatorDisplayDetail(index)
                  }
                },
                child: Text(datas[index].name),
              ),
            );
          },
        ));
  }

  navigatorDisplayDetail(int index) async {
    final delete = await Navigator.pushNamed(context, Detail.route);

    if (delete) {
      datas.removeAt(index);
      setState(() {

      });
    }
  }
}

class Person {
  String name = "";
  int id = 0;

  Person({this.id, this.name});
}
