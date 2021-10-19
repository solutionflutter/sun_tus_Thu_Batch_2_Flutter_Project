import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Messenger_Page extends StatefulWidget {
  const Messenger_Page({Key key}) : super(key: key);

  @override
  _Messenger_PageState createState() => _Messenger_PageState();
}

class _Messenger_PageState extends State<Messenger_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ,
        actions: [
          Container(
            child: FlatButton.icon(
              onPressed: (){},
              icon: Icon(
                Icons.message,
                size: 15,
                color: Color.fromRGBO(31, 31, 45,0.6),
              ),
              label: Text(
                  "Messages",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(31, 31, 31, 0.6)
                ),
              ),
            ),
          )
        ],
        centerTitle: ,
        title: ,
      ),
    );
  }
}
