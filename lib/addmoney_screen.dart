import 'package:bankee/transaction_complete_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'accounts.dart';
import 'repository/userRepository.dart';

class addmoney_screen extends StatefulWidget {
  const addmoney_screen({Key? key}) : super(key: key);

  @override
  State<addmoney_screen> createState() => _addmoney_screenState();
}

class _addmoney_screenState extends State<addmoney_screen> {
  String dropdownvalue = 'Bkash';
  late String pin;
  int balance1=0;


  var items = [
    'Bkash',
    'Card',
    'Nagad',
    'UCash',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('Add Money',
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
             Container(height: 7.h,width: 90.w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black
                 )
               ),
               child:  DropdownButton(
                 value: dropdownvalue,
                 icon: Align(
                    alignment: Alignment.centerRight,
                     child: const Icon(Icons.keyboard_arrow_down)),

                 // Array list of items
                 items: items.map((String items) {
                   return DropdownMenuItem(
                     value: items,
                     child: Text(items),
                   );
                 }).toList(),
                 // After selecting the desired option,it will
                 // change button value to selected value
                 onChanged: (String? newValue) {
                   setState(() {
                     dropdownvalue = newValue!;
                   });
                 },
               ),
             ),

            //menu
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
                  account_balance.value=account_balance.value+balance1;
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
                    'Add Money',
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
