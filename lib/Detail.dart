import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  static final route = 'detail';

  @override
  State<StatefulWidget> createState() {
    return DetailState();
  }

}

Function callback(){}

class DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column (
        children: <Widget>[
          RaisedButton(
            onPressed: () => {
              callback()
            },
            child: const Text("Delete"),
          ),
          RaisedButton(
            onPressed: () => {
              Navigator.pop(context, true)
            },
            child: const Text("Update"),
          )
        ],
      ),
    );
  }
}