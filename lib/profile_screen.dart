import 'package:flutter/material.dart';

import 'repository/userRepository.dart';

class profile_screen extends StatefulWidget {
  @override
  _profile_screenState createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(child:Text('Profile',
            style: TextStyle(
                color: Colors.white
            ),)),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.lime,
                      radius: 80,
                      //backgroundImage: NetworkImage("https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"),
                        backgroundImage: AssetImage('assets/profilepic.png'),
                    ),
                  ),
                  FlatButton(
                    shape:new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    color:Color(0xFFE6D1F2),
                    onPressed: (){},
                    child: Text(currentUser.value.name,
                        style:TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(height: 40,),
                  Container(color: Colors.white,
                   height: 300,
                   width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Account Number : 0123456789"),
                        Text("Account Type: Savings"),
                        Text("Card Number : 1574-8565-4569-1212"),
                        Text("Card Type: VISA"),
                        Text("Account Holders Name: Turza Hasan Chowdhury"),
                        Text("Date of Birth: 16 June, 1995"),
                        Text("Address: 2/3 Mohammadpur,Dhaka-1207"),
                        Text("Contact Number : 01705825439"),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}


