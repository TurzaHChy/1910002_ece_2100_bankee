import 'package:bankee/accounts.dart';
import 'package:bankee/loan_screen.dart';
import 'package:bankee/login_screen.dart';
import 'package:bankee/repository/userRepository.dart';
import 'package:bankee/stock_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bankee/profile_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bankee/addnewaccount_screen.dart';
import 'package:bankee/moneytransfer_screen.dart';
import 'package:bankee/addmoney_screen.dart';
import 'package:bankee/mobilerecharge_screen.dart';
import 'package:bankee/remitance_screen.dart';
import 'package:bankee/info_screen.dart';
import 'package:bankee/account_balance_screen.dart';
import 'package:bankee/paybill_screen.dart';
import 'package:bankee/makepayment_screen.dart';
import 'package:bankee/sendmoney_screen.dart';
import 'package:bankee/chat_details.dart';

import 'models/user.dart';


class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int _selectedIndex = 1;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(_selectedIndex==0){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer:  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Text('Menu',style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),),
              ),
              ListTile(
                title:const Text('Statement'),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Limit'),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Coupon'),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Refer app'),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Support'),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  currentUser.value=User();
                  account_balance.value=balance;
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context) =>
                         login_screen()
                  ));


                },
              ),
            ],
          ),
        ),
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
           // Navigator.pop(context);
          },

        ),
        backgroundColor: Colors.deepPurple,
        title: Padding(
           padding: EdgeInsets.fromLTRB(90, 25, 10,20),
            child: Text("BANKEE",style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),),
        )
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 12.h,
              width: 99.w,

              child: Row(
                children: [
                  SizedBox(width:0.5.w,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                 profile_screen()));
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        //backgroundImage: NetworkImage("https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"),
                        backgroundImage: AssetImage('assets/profilepic.png'),
                      ),
                    ),
                  ),
                  Container(height: 10.h,width: 58.w,color: Colors.white,
                    child:Column(
                      children: [
                        Container(
                            height: 5.5.h,width: 52.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                            ),
                            child: Center(child:Text(
                              currentUser.value.name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),)
                        ),
                        SizedBox(height: 1.h,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        account_balance_screen()));
                          },
                          child: Container(
                            height: 3.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFE6D1F2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text(
                                'Account Balance',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 10.h,color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: 9.w,
                          child:IconButton(
                            icon: Icon(Icons.add,size: 4.h,),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                         adnewaccount_screen()));
                            },
                          ),
                          //child:  Icon(Icons.info_outline_rounded, size: 5.h,),
                        ),
                        Container(
                          width: 9.w,
                          child:IconButton(
                            icon: Icon(Icons.settings,size: 4.h,),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          info_screen()));
                            },
                          ),
                          //child:  Icon(Icons.info_outline_rounded, size: 5.h,),
                        ),
                      ],
                    ),

                  ),
                ],
              ),

            ),
            SizedBox(height: 1.h,),
            Container(
              color: Colors.white38,
              height: 65.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                             onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  sendmoney_screen()));
                                    },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/sendmoney1.jpg'),
                                            fit: BoxFit.fill,
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Send Money',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          mobilerecharge_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/mobilerecharge.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Mobile recharge',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          makepayment_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/makepayment.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Make Payment',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                         addmoney_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/addmoney.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Add Money',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                         paybill_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/paybill.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Pay Bill',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                      ChatDetails()
                                  ));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/savings.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Savings',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          loan_screen()
                                  ));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/loan.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Loan',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          remittance_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/remittance.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Remittance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          moneytransfer_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/transfer.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Money Transfer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/educationmoney.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Education fee',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          stock_screen()));
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/stock.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'Stocks',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 10.h,
                              width: 10.h,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,width: 15.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/atm.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(height: 4.h,
                                    child:Center(
                                      child: Text(
                                        'ATM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                    SizedBox(height: 1.5.h,),


                    //advertisement
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 22.h,
                        aspectRatio: 21/9,
                        autoPlay: true,
                        //reverse: true,
                        autoPlayInterval: Duration(seconds: 3),
                        enlargeCenterPage: true,

                      ),

                      items: ['assets/add1.jpg','assets/add2.jpg','assets/add3.jpg'].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 18.h,width:90.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(i.toString()),
                                      fit: BoxFit.fill
                                  )
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 0.5.h,),
                    Container(height: 10.h,width:45.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)
                      ),
                    child: Column(
                      children: [
                        Container(height:2.5.h,width:40.w,color:Colors.white,child: Center(
                          child: Text("Other Services",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                          ),),
                        ),),
                        Container(height: 7.h,color: Colors.transparent,

                            child:  ListView(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/visa.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/mscard.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/paypal.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/MoneyGram.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/ria.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/wu.jpg'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage('assets/nexus.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),

                                  ),
                                ),

                              ],

                          ),
                        ),
                      ],
                    ),
                    ),
                    SizedBox(height: 1.5.h,),
                    Container(height: 20.h,width:43.5.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: [
                          Container(height:2.5.h,width:20.w,color:Colors.white,child: Center(
                            child: Text("OFFERS",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),),
                          ),),
                          // Container(height: 17.h,width:90.w,
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage('assets/offer1.JPG'),
                          //           fit: BoxFit.fill
                          //       )
                          //   ),
                          // ),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 17.h,
                              aspectRatio: 21/9,
                              autoPlay: true,
                              //reverse: true,
                              autoPlayInterval: Duration(seconds: 3),
                              enlargeCenterPage: true,

                            ),

                            items: ['assets/offer1.JPG','assets/offer2.jpg','assets/offer3.jpg'].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 18.h,width:90.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(i.toString()),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: "QR code",
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "chat",
              backgroundColor: Colors.blue,

            ),
          ],
         // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}



