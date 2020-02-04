import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/NavDrawer.dart';
import 'package:flare_flutter/flare_actor.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mainText = "I am Galab.\nWelcome to my small world.";
  String showText = "";
  int length;
  bool showButton = false;
  double _width = 0.0;
  double _height = 0.0;
  
  TextStyle mainTextStyle = new TextStyle(fontSize: 48, color: Color(0xff212121),);

  

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  showTextAnimation() async {
    length = mainText.length;
    for(int i=0; i<mainText.length; i++){
      
      await sleep1();

      setState(() {
        if (length-1 == i){
          showButton = true;
          _width = 600;
          _height= 70;
        }
        showText = mainText.substring(0,i);
      });
      
    }
  }

  Future sleep1() async{
    return new Future.delayed(const Duration(milliseconds: 200), () => "1");
  }
  
  @protected
  @mustCallSuper
  void initState() {
    showTextAnimation();
  }

  _openDrawer(scaffoldKey){
    scaffoldKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final resumeButton = Material(
              elevation: 0.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffeeeeee),
              child: MaterialButton(
                minWidth: 150.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  
                  
                },
                child: Text("Ping me",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff424242), fontWeight: FontWeight.bold)),
              ),
            );
    final pingCard = Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                    child: Icon(Icons.alternate_email, color: Colors.grey),),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Your Email'),
                                  ),
                                )
                              ],
                            ),),
                            
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: resumeButton,
                          )
                        )
                      ],
                    ),
                  );
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        

        endDrawer: new NavDrawer("Galab Pokharel", "image", navigatorKey),
        
        body: new Container(
          child: Stack(
            children: <Widget>[
              // new Align(
              //   widthFactor: 0.6,
              //   alignment: Alignment.centerRight,
              //   child: Container(
              //     alignment: Alignment.center,
              //         child:  Container(
              //           alignment: Alignment.centerRight,
              //           child: FlareActor(
              //               "assets/intro.flr",
              //             animation: "coding",
              //             fit: BoxFit.scaleDown,
              //           ),
                        
              //         )),
              // ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 60,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                    ),
                    // color: Color(0xfff5f5f5),
                    child: Stack(
                      
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: IconButton(
                            onPressed: (){
                              _scaffoldKey.currentState.openEndDrawer();
                            },
                            icon: Icon(Icons.menu),
                            color: Color(0xff212121),
                            hoverColor: Color(0xffeeeeee),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(64),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Hi", style: TextStyle(
                          fontSize: 60,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xff212121),)),
                        Text(showText, style: mainTextStyle,),
                        
                      ],
                    ),
                  ),

                  // Container(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Visibility(
                  //     visible: showButton,
                  //     child: resumeButton,
                  //   )
                  // ),
                  AnimatedContainer(
                    margin: EdgeInsets.all(64),
                     // Use the properties stored in the State class.
                    width: _width,
                    height: _height,
                    child: pingCard,
                    // Define how long the animation should take.
                    duration: Duration(milliseconds: 500),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.fastOutSlowIn,
                  ),
                  
                  //   ),
                ],
              ),
              
              
            ],
          )
        ),
      )

         
    );
  }
}

