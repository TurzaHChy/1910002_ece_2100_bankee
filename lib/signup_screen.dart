
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sizer/sizer.dart';

import 'controllers/userController.dart';
import 'repository/userRepository.dart';
import 'verifyEmail_screen.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends StateMVC<signupScreen> {
  late UserController _con ;

  _signupScreenState() : super(UserController()) {
    _con = controller as UserController;
  }


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
                decoration: InputDecoration(
                  hintText: "Enter Your name",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  _con.user.name=value.toString();
                  //  this.userName = userName;
                },
              ),
            ),
            Padding(
              padding:EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  _con.user.email=value.toString();
                  //   this.passWord = passWord;
                },
              ),
            ),
            Padding(
              padding:EdgeInsets.all(15.sp),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  _con.user.password=value.toString();
                  //   this.passWord = passWord;
                },
              ),
            ),

            GestureDetector(
              onTap: () {
               // _con.listenForSignup(context);

                sendEmail(_con.user.email);
                Navigator.push(context,  MaterialPageRoute (
                    builder: (BuildContext context) =>  VerifyEmailScreen(_con)
                ));

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
                    'SignUp',
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
