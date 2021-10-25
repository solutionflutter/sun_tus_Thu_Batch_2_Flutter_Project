import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/Models/Models.dart';
import 'package:suntusthsbatchsecond/profile_page.dart';

List<PostModel> post = [
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Khulna Government Mahila College',address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',postImageURL: '',likes: 2345),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Khulna College',address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 345),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Ahsanullah College',address: 'KDA Ave, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 545),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Azam Khan Government Commerce College',address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 45),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Govt. Brajalal (BL) College',address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',postImageURL: '',likes: 35),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Govt. M. M. City College',address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',postImageURL: '',likes: 23),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: 'Khulna Public College',address: 'public college, road, Khulna-9000,Khulna,Bangaldesh',postImageURL: '',likes: 845),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: '',address: '',postImageURL: '',likes: 5355),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: '',address: '',postImageURL: '',likes: 4845),
  PostModel(username: 'Sheikh Hasina',profileImageURL: 'images/Sheikh-Hasina.jpg',caption: '',address: '',postImageURL: '',likes: 245),
];


class Post_Page extends StatefulWidget {
  const Post_Page({Key key}) : super(key: key);

  @override
  _Post_PageState createState() => _Post_PageState();
}

class _Post_PageState extends State<Post_Page> {
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
        title: Text(
          "Posts Page",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(31, 31, 45, .6),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>Post_Page(),
                  ),
              );
            },
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(31, 31, 45, .6),
            ),
            iconSize: 20,
          ),
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
      ),
      body: Container(
        child: ListView.builder(
            padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15
            ),
            itemCount: ,
            itemBuilder: (BuildContext context,int index){
               return Container(
                 height: MediaQuery.of(context).size.height/3.5,
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.symmetric(vertical: 15),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                 ),
                 child: Column(
                   children: [

                   ],
                 ),
               );
            }
            ),
      )
    );
  }
}
