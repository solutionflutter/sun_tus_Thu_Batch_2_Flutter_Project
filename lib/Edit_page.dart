import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchsecond/Splash_screen.dart';
import 'package:suntusthsbatchsecond/profile_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 10,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height/10,
            width: MediaQuery.of(context).size.width/10,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 122, 23,1),
              border: Border.all(
                color: Color.fromRGBO(234, 86, 255,1),
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: FlatButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> SplashScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(0, 0, 0, .5),
                  size: 15,
                ),
                label: Text(
                  "Back",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color.fromRGBO(0, 0, 0,0.5),
                  ),
                ),
            ),
          ),
        ),
        title: Text(
            "Edit Page",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(120, 255, 125, 1),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color.fromRGBO(110, 150, 200, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                color: Color.fromRGBO(255, 120, 20, 1),
              ),
              child: FlatButton.icon(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> ProfilePage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.save_outlined,
                    color: Color.fromRGBO(0, 0, 0, .5),
                    size: 15,
                  ),
                  label: Text(
                      "Save",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
