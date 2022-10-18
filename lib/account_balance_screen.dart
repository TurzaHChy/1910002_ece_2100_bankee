import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bankee/accounts.dart';


class account_balance_screen extends StatefulWidget {
  @override
  _account_balance_screenState createState() => _account_balance_screenState();
}

class _account_balance_screenState extends State<account_balance_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(child:Text('Account Balance',
            style: TextStyle(
                color: Colors.white
            ),)),
        ),
       body: Container(
         child: Center(
           child: Column(
             children: [
               SizedBox(height: 15.h,),
               Container(
                 height: 20.h,width: 50.w,
                 decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage('assets/creditcard.png'),
                         fit: BoxFit.fill
                     )
                 ),
               ),
               SizedBox(height: 8.h,),
               Container(
                 height: 8.h,width: 50.w,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(color: Colors.black)
                 ),
                 child: Center(
                   child: Text("${account_balance.value} TK",style: TextStyle(
                     fontSize: 25,
                     color: Colors.black87,
                   ),),

                 ),
               ),
             ],
           ),
         ),
       ),
    );
  }
}


