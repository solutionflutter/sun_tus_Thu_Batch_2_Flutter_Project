import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/Edit_page.dart';
import 'package:suntusthsbatchsecond/Follower_Page.dart';
import 'package:suntusthsbatchsecond/Following_Page.dart';
import 'package:suntusthsbatchsecond/Messenger_Page.dart';
import 'package:suntusthsbatchsecond/Posts_Page.dart';
import 'package:suntusthsbatchsecond/Splash_screen.dart';

List<String> posts = [
  "images/Posts/post_1.jpg",
  "images/Posts/post_2.jpg",
  "images/Posts/post_3.jpg",
  "images/Posts/post_4.jpg",
  "images/Posts/post_5.jpg",
  "images/Posts/post_6.jpg",
  "images/Posts/post_7.jpg",
  "images/Posts/post_8.jpg",
  "images/Posts/post_9.jpg",
  "images/Posts/post_10.jpg",
];

List<String> friends = [
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

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 18,
          ),
          title: Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey.shade200,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade400,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Edit"),
                      Icon(
                        Icons.create_sharp,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
      backgroundColor: Color.fromRGBO(246, 246, 246, .6),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: [
          //Header slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Sheikh-Hasina.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(34, 36, 45, 1),
                          width: 3,
                          style: BorderStyle.solid,
                        )),
                  ),

                  //profile name and address column
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 77),
                          child: Text(
                            'Sheikh Hasina',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(249, 248, 240, 1),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Text(
                          'National Parliament House,Sher-e-Bangla Nagar, Dhaka',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(249, 248, 240, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bio slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height / 3.1,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Text and icon container
                    Container(
                      height: MediaQuery.of(context).size.height / 30,
                      width: MediaQuery.of(context).size.width / 7,
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 1.3,
                        top: MediaQuery.of(context).size.height / 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bio",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromRGBO(248, 249, 250, .5),
                            ),
                          ),
                          Icon(
                            Icons.create_rounded,
                            color: Color.fromRGBO(248, 249, 250, .5),
                            size: 18,
                          ),
                        ],
                      ),
                    ),

                    //Text Container

                    Container(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        "Sheikh Hasina, also "
                        "known by her married name Sheikh Hasina Wazed, "
                        "is a Bangladeshi politician who has been serving as "
                        "the Prime Minister of Bangladesh since January 2009. "
                        "She previously served as prime minister from June 1996 to July 2001",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(249, 247, 245, .5),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Button container slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                spacing: 5,
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(31, 31, 31, 1),
                          width: 3,
                          style: BorderStyle.solid),
                      color: Color.fromRGBO(245, 245, 245, 0.5),
                    ),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Post_Page(),
                          ),
                        );
                      },
                      icon: Icon(
                        CupertinoIcons.plus_square_on_square,
                        size: 12,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      label: Text(
                        "Posts",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(21, 21, 21, 1),
                        ),
                      ),
                    ),
                  ),

                  //Messanger container button
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 3.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid),
                      color: Color.fromRGBO(245, 245, 245, .5),
                    ),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Messenger_Page(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.message_outlined,
                        size: 12,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      label: Text(
                        "Messenger",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromRGBO(21, 21, 21, 1),
                        ),
                      ),
                    ),
                  ),

                  //Following button container
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 3.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid),
                      color: Color.fromRGBO(245, 245, 245, .5),
                    ),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Following_Page(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.follow_the_signs_rounded,
                        size: 12,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      label: Text(
                        "Following",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(21, 21, 21, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  //Follower Button

                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(21, 21, 21, 1),
                          width: 3,
                          style: BorderStyle.solid),
                      color: Color.fromRGBO(245, 245, 245, .5),
                    ),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Follower_Page(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 12,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      label: Text(
                        "Follower",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromRGBO(21, 21, 21, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Text SlivertoBoxAdapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 25,
                vertical: MediaQuery.of(context).size.height / 30,
              ),
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Posts photos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),

          //posts images sliver grid view

          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${posts[index]}"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
              childCount: posts.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),

          // Friends Text SlivertoBoxAdapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 25,
                vertical: MediaQuery.of(context).size.height / 30,
              ),
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Friends photos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),

          //Friends images sliver grid view

          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${friends[index]}"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
              childCount: friends.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
