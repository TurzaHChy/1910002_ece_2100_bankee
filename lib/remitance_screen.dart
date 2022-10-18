import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class remittance_screen extends StatefulWidget {
  const remittance_screen({Key? key}) : super(key: key);

  @override
  State<remittance_screen> createState() => _remittance_screenState();
}

class _remittance_screenState extends State<remittance_screen> {
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
        title: Center(child: Text("Remittance")),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white38
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Recieve Type",
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
                onChanged: (passWord){
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
                onChanged: (passWord){
                },
              ),
            ),

            GestureDetector(
              onTap: () {
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
                    'Convert',
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
