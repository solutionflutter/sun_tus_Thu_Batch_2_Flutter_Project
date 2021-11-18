import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/Models/Models.dart';
import 'package:suntusthsbatchsecond/Splash_screen.dart';
import 'package:suntusthsbatchsecond/profile_page.dart';

List<String> imagesBoxes = [
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

List<PostModel> post = [
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Government Mahila College',
      address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',
      postImageURL: 'images/Posts/post_1.jpg',
      likes: 2345),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna College',
      address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_2.jpg',
      likes: 345),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Ahsanullah College',
      address: 'KDA Ave, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_3.jpg',
      likes: 545),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_4.jpg',
      likes: 45),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Govt. Brajalal (BL) College',
      address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_5.jpg',
      likes: 35),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_6.jpg',
      likes: 23),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Public College',
      address: 'public college, road, Khulna-9000,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_7.jpg',
      likes: 845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Government College',
      address: 'Hasanbag Road, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_8.jpg',
      likes: 5355),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Government Sundarban Adarsha College',
      address: '91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_9.jpg',
      likes: 4845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageURL: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Islamia Degree College',
      address: ' M A Bari St, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/post_10.jpg',
      likes: 245),
];

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key key}) : super(key: key);

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      body: fullBody(context),
    );
  }

  Widget fullBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
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

        //Sliver list

        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagesBoxes.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${imagesBoxes[index]}"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget Appbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Color.fromRGBO(21, 21, 21, 1),
          size: 25,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SplashScreen(),
            ),
          );
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(21, 21, 21, 1),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        )
      ],
      title: Text(
        "TimeLine",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(21, 21, 21, 1),
        ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(245, 245, 245, .6),
    );
  }
}
