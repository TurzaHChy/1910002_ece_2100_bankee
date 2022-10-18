
import 'splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(

      Sizer(
      builder: (context, orientation, deviceType) {
       return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: splash_screen(),
        );
      }
      ));
}

