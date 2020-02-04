import 'package:flutter/material.dart';

class ExperienceActivity extends StatefulWidget {
  @override
  _ExperienceActivityState createState() => _ExperienceActivityState();
}

class _ExperienceActivityState extends State<ExperienceActivity> {
  @override
  Widget build(BuildContext context) {
    TextStyle mainTextStyle = new TextStyle(fontSize: 32, color: Color(0xff212121),);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme:  IconThemeData(color: Color(0xff212121))
      ),
      body: (
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Experience", style: mainTextStyle,)
              ],
            ),
          ),
        )
      ),
      
    );
  }
}