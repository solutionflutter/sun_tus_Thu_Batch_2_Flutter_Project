import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/profile_page.dart';

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
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>ProfilePage(),
                ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(31, 31, 45, .6),
          ),
          iconSize: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10,top: 10,bottom: 10),
            child: Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(21, 21,21, .5),
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              child: FlatButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>Messenger_Page(),
                    ),
                  );
                },
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
            ),
          )
        ],
        centerTitle: true,
        title: Text(
            "Messenger",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(31, 31, 45, .6)
          ),
        ),
      ),
    );
  }
}
