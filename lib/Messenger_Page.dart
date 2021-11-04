import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/profile_page.dart';

List<String> imagesAvater = [
  "images/Profile_Images/user_1.jpg",
  "images/Profile_Images/user_2.jpg",
  "images/Profile_Images/user_3.jpg",
  "images/Profile_Images/user_4.jpg",
  "images/Profile_Images/user_5.jpg",
  "images/Profile_Images/user_6.jpg",
  "images/Profile_Images/user_7.jpg",
  "images/Profile_Images/user_8.jpg",
  "images/Profile_Images/user_9.jpg",
  "images/Profile_Images/user_10.jpg",
];

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
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
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(0, 0, 0, .6),
            ),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Messenger_Page(),
                ),
              );
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        centerTitle: true,
        title: Text(
          "Messenger",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color.fromRGBO(31, 31, 45, .6)),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagesAvater.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${imagesAvater[index]}"),
                        fit: BoxFit.fitWidth,
                      ),
                      border: Border.all(
                          color: Color.fromRGBO(100, 100, 255, 1),
                          style: BorderStyle.solid,
                          width: 3),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
