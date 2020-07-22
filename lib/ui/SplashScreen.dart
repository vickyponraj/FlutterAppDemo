
import 'dart:async';

import 'package:Flutter_001/labels/Strings.dart';
import 'package:flutter/material.dart';

import 'DashBoardScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      home: SplashScreenWidget(),
    );
  }
}

class SplashScreenWidget extends StatefulWidget {
  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {

  @override
  void initState() {
    super.initState();
    startTime();
  }


  startTime() async {
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(Strings.appLogoURL,width: 100,height: 100, fit: BoxFit.scaleDown,color: Colors.white,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(Strings.appDescription,maxLines: 2,style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: LinearProgressIndicator(
                  backgroundColor: Colors.white54,
                  valueColor:new AlwaysStoppedAnimation<Color>(Colors.white)),
            )
          ],
        ),
      )),
    );
  }
}

