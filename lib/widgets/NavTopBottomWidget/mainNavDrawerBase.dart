import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Experience.dart';

class MainNavDrawerBase extends StatefulWidget {
  GlobalKey<NavigatorState> mainNavKey;
  MainNavDrawerBase(GlobalKey<NavigatorState> mainNavKey){
    this.mainNavKey = mainNavKey;
  }

  @override
  _MainNavDrawerBaseState createState() => _MainNavDrawerBaseState();
}

class _MainNavDrawerBaseState extends State<MainNavDrawerBase> {

  TextStyle textStyle = new TextStyle(color: Color(0xffe37528));

  // experience
  // education 
  // project
  // skill 
  // contact

  @override
  Widget build(BuildContext context) {
    // _logout() async{
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.clear();
    //   Navigator.of(context).pushAndRemoveUntil(
    //                  CupertinoPageRoute(builder: (context) =>
    //                 BridgeActivity()), (Route<dynamic> route) => false);
      
    // }
    return Container(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.group_work),
          title: Text('Experience',),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, CupertinoPageRoute(
              builder: (context) => ExperienceActivity() 
            ));
            // widget.mainNavKey.currentState.push(
            //                CupertinoPageRoute(builder: (context) =>
            //               AccountActivity()));
            // Navigator.push(context, CupertinoPageRoute(
              
            //   builder: (context) => AccountActivity()
            // ));
            },
          ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Projects'),
          onTap: () {
            Navigator.pop(context);
            // Navigator.push(context, CupertinoPageRoute(
              
            //   builder: (context) => AllReferrals()
            // ));
          },
        ),
        ListTile(
          leading: Icon(Icons.grade),
          title: Text('Skills'),
          onTap: () {
            Navigator.pop(context);
            // Navigator.push(context, CupertinoPageRoute(
            //         builder: (context) => SegmentedReferral(status: 1)
            //       ));
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Education'),
          onTap: () {
            Navigator.pop(context);
            // Navigator.push(context, CupertinoPageRoute(
            //         builder: (context) => SegmentedReferral(status: 2)
            //       ));
          },
        ),
        ListTile(
          leading: Icon(Icons.import_contacts),
          title: Text('Contact'),
          onTap: () {
            Navigator.pop(context);
            // Navigator.push(context, CupertinoPageRoute(
            //         builder: (context) => SegmentedReferral(status: 0)
            //       ));
          },
        ),

        

        

      ],),
    );
  }
}