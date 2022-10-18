import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bankee/electricitybill_screen.dart';

class paybill_screen extends StatefulWidget {
  const paybill_screen({Key? key}) : super(key: key);

  @override
  State<paybill_screen> createState() => _paybill_screenState();
}

class _paybill_screenState extends State<paybill_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('PAY BILL',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              eletricitybill_screen()));
                },
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'Electricity Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'WASA Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'Internet Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'BTCL Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'TITAS GAS Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 6.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'Other Bill',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
