import 'package:bankee/home_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:bankee/accounts.dart';
//import 'package:bankee/sendmoney_screen.dart';

class transaction_complete_screen extends StatefulWidget {
  const transaction_complete_screen({Key? key}) : super(key: key);

  @override
  State<transaction_complete_screen> createState() => _transaction_complete_screenState();
}

class _transaction_complete_screenState extends State<transaction_complete_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('Transaction Completed',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),

      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            Container(width: 80.w,
              child: Text('Transaction ID: 9AFJk24768',style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 2.h,),
            Container(width: 80.w,
              child: Text('Transaction Time: 14:53',style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 2.h,),
            Container(width: 80.w,
              child: Text('New Account balance: ${account_balance.value} TK',style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 2.h,),
            SizedBox(height: 20.h,),
            Center(
              child: Container(
                height: 10.h,width: 8.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/tick.png'),
                        fit: BoxFit.fill
                    )
                ),



              ),
            ),
            SizedBox(height: 10.h,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            home_screen()));
              },
              child: Container(
                height: 5.h,
                width:60.w,
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
                    'Go back to Home Page',
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
    );
  }
}
