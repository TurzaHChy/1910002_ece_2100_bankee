import 'dart:convert';

import 'package:bankee/verifyEmail_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mvc_pattern/mvc_pattern.dart';
import '../accounts.dart';
import '../home_screen.dart';
import '../models/user.dart';
import '../repository/userRepository.dart';


class UserController extends ControllerMVC{
  User user=new User();



  Future<void> listenForUser(BuildContext context) async{
    await emailLogin(user);
    if(currentUser.value.id!=''){
      print("currentUser ${currentUser.value.balance}");
      account_balance.value=currentUser.value.balance;
     Navigator.push(context,  MaterialPageRoute (
       builder: (BuildContext context) => const home_screen()
     ));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Wrong Credential"),
      ));
    }

  }


  Future<void> listenForSignup(BuildContext context) async{
    print("this is user ${user.name}");
    await emailRegister(user);
    if(currentUser.value.id!=''){
      print("currentUser ${currentUser.value.balance}");
      account_balance.value=currentUser.value.balance;
      Navigator.push(context,  MaterialPageRoute (
        builder: (BuildContext context) => const home_screen()
      ));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Wrong Credential"),
      ));
    }

  }



}