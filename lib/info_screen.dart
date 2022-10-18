import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class info_screen extends StatefulWidget {
  const info_screen({Key? key}) : super(key: key);

  @override
  State<info_screen> createState() => _info_screenState();
}

class _info_screenState extends State<info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child:Text('Settings',
          style: TextStyle(
              color: Colors.white
          ),)),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5.w,),
                  Icon(Icons.person,size: 3.h),
                  Container(
                    height:10.h, width: 70.w,
                    child: Center(child: Text("Change Your Name",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),)),
                  ),

                  Container(
                    child: IconButton(
                      icon: Icon(Icons.edit,size: 3.h,),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5.w,),
                  Icon(Icons.person,size: 3.h),
                  Container(
                    height:10.h, width: 70.w,
                    child: Center(child: Text("Change your Picture",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),)),
                  ),

                  Container(
                    child: IconButton(
                      icon: Icon(Icons.image,size: 3.h,),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
