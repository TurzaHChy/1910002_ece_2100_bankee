import 'package:bankee/transaction_complete_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'accounts.dart';
import 'repository/userRepository.dart';



class makepayment_screen extends StatefulWidget {
  const makepayment_screen({Key? key}) : super(key: key);

  @override
  State<makepayment_screen> createState() => _makepayment_screenState();
}

class _makepayment_screenState extends State<makepayment_screen> {
  late String pin;
  int balance1=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text("MAKE PAYMENT")),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white38
          // image: DecorationImage(
          //     image: NetworkImage("https://images.unsplash.com/photo-1615715616181-6ba85d724137?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
          //     fit: BoxFit.fill
          // )
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Merchant's Account number",
                  border: OutlineInputBorder(),
                ),
                onChanged: (userName){
                },
              ),
            ),
            Padding(
              padding:EdgeInsets.all(15.sp),
              child: TextFormField(
                keyboardType: TextInputType.number,
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
                obscureText: true,
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
                width: 40.w,
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
                    'Make Payment',
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





      // body: Container(
      //   decoration: BoxDecoration(
      //       color: Colors.white38
      //     // image: DecorationImage(
      //     //     image: NetworkImage("https://images.unsplash.com/photo-1615715616181-6ba85d724137?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
      //     //     fit: BoxFit.fill
      //     // )
      //   ),
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.all(15.sp),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //             hintText: "Enter Merchant's Account number",
      //             border: OutlineInputBorder(),
      //           ),
      //           onChanged: (userName){
      //           },
      //         ),
      //       ),
      //       Padding(
      //         padding:EdgeInsets.all(15.sp),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //             hintText: "Enter Amount",
      //             border: OutlineInputBorder(),
      //           ),
      //           onChanged: (passWord){
      //           },
      //         ),
      //       ),
      //       Padding(
      //         padding:EdgeInsets.all(15.sp),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //             hintText: "Enter PIN Number",
      //             border: OutlineInputBorder(),
      //           ),
      //           onChanged: (passWord){
      //           },
      //         ),
      //       ),
      //
      //       GestureDetector(
      //         onTap: () {
      //         },
      //         child: Container(
      //           height: 6.h,
      //           width: 20.h,
      //           decoration: BoxDecoration(
      //             // color: Color(0xFFb042ff),
      //               color: Colors.deepPurpleAccent,
      //               borderRadius: const BorderRadius.all(
      //                 Radius.circular(15.0),
      //               ),
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.black.withOpacity(0.2),
      //                   spreadRadius: 2,
      //                   blurRadius: 10,
      //                   offset: Offset(0, 3),
      //                 )
      //               ]
      //           ),
      //           child: Center(
      //             child: Text(
      //               'Make Payment',
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
