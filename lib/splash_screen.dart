import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bankee/login_screen.dart';



class splash_screen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<splash_screen>  {

  @override
  void initState() {
    Timer(
        Duration(milliseconds: 3000 ),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => login_screen()
            )));
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: new BoxDecoration(color: Colors.white),
            child: new Center(
                child: Container(
                    height: 22.h,
                    width: 50.w,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.fill,
                        )
                    )

                )
              // child: image,
            ),
          ), //<- place where the image appears
        );

  }
}