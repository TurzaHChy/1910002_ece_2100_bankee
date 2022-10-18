import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class adnewaccount_screen extends StatefulWidget {
  const adnewaccount_screen({Key? key}) : super(key: key);

  @override
  State<adnewaccount_screen> createState() => _adnewaccount_screenState();
}

class _adnewaccount_screenState extends State<adnewaccount_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('ADD ACCOUNT',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 5.w,),
            Icon(Icons.person,size: 3.h),
            Container(
              height:10.h, width: 70.w,
              child: Center(child: Text("Sign up with new account",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),)),
            ),

            Container(
              child: IconButton(
                icon: Icon(Icons.add,size: 3.h,),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
