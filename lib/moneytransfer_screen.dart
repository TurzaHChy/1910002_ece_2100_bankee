import 'package:bankee/repository/userRepository.dart';
import 'package:bankee/transaction_complete_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'accounts.dart';

class moneytransfer_screen extends StatefulWidget {
  const moneytransfer_screen({Key? key}) : super(key: key);

  @override
  State<moneytransfer_screen> createState() => _moneytransfer_screenState();
}

class _moneytransfer_screenState extends State<moneytransfer_screen> {
  late String pin;
  int balance1=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('Transfer Money',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white38
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //menu
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "To",
                  border: OutlineInputBorder(),
                ),
                onChanged: (userName){
                },
              ),
            ),
            Padding(
              padding:EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Amount",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  setState(() {
                    balance1=int.parse(value);
                  });

                },
              ),
            ),
            Padding(
              padding:EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter PIN Number",
                  border: OutlineInputBorder(),
                ),
                onChanged: (pin){
                  this.pin = pin;
                },
              ),
            ),

            GestureDetector(
              onTap: () {
                if(this.pin == "0123"){
                  account_balance.value=account_balance.value-balance1;
                  balanceUpdate();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              transaction_complete_screen()));
                }else{
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Expanded(
                        child: AlertDialog(
                          title: Text('Incorrect PIN',style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),),

                          actions: [
                            FlatButton(
                              textColor: Colors.black,
                              onPressed: () {},
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                  );

                  print("Wrong username or password");
                }


              },
              child: Container(
                height: 6.h,
                width: 20.h,
                decoration: BoxDecoration(
                  // color: Color(0xFFb042ff),
                    color: Colors.deepPurpleAccent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                child: Center(
                  child: Text(
                    'Transfer Money',
                    textAlign: TextAlign.center,
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
