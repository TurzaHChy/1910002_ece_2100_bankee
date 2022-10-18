
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sizer/sizer.dart';

import 'controllers/userController.dart';
import 'home_screen.dart';

class VerifyEmailScreen extends StatefulWidget {
  UserController controller;


  VerifyEmailScreen(this.controller);

  @override
  _VerifyEmailScreenState createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends StateMVC<VerifyEmailScreen> {

  String code='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.fill
            )
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Your Verification Code",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  setState(() {
                    code=value.toString();
                  });

                },
              ),
            ),


            GestureDetector(
              onTap: () {
                if(code=="789456"){
                widget.controller.listenForSignup(context);
                }
              },
              child: Container(
                height: 6.h,
                width: 15.h,
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
                    'Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              height: 3.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forget Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 3.h,
              width: 80.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Dont have any account? Create new account',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),







          ],
        ),
      ),
    );
  }
}
