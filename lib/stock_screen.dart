import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class stock_screen extends StatefulWidget {
  const stock_screen({Key? key}) : super(key: key);

  @override
  State<stock_screen> createState() => _stock_screenState();
}

class _stock_screenState extends State<stock_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('Current Stocks',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50.h,width: 90.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stockgraph.gif'),
                      fit: BoxFit.fill,
                    )
                ),

              ),
              Container()
            ],
          ),
        ),

      ),
    );
  }
}
