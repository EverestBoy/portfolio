import 'package:flutter/material.dart';

class mainNavDrawerHeader extends StatefulWidget {
  String name;
  String image;

  mainNavDrawerHeader(String name, String image){
    this.name = name;
    this.image = image;
  }

  @override
  _mainNavDrawerHeaderState createState() => _mainNavDrawerHeaderState(name, image);
}

class _mainNavDrawerHeaderState extends State<mainNavDrawerHeader> {

  String name;
  String image;

  _mainNavDrawerHeaderState(String name, String image){
    this.name = name;
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: FadeInImage(
                          placeholder: NetworkImage("https://avatars2.githubusercontent.com/u/31234429?s=400&v=4"),
                          image: NetworkImage("image"),
                          fit: BoxFit.cover,
                  ))
                ),
              )
          ),
    );
  }
}