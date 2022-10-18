import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import '../accounts.dart';
import '../models/user.dart';

String api='http://192.168.1.110:6006/api/';

ValueNotifier<User> currentUser =  ValueNotifier(User());


Future<User> emailLogin(User user) async {
  final String url = api+'login';
  final client = new http.Client();
  final response = await client.post(
    Uri.parse(url),
    headers: { 'Accept': 'application/json','Content-type': 'application/json' },
    body: json.encode(user.loginMap()),
  );
  if (kDebugMode) {
    print("This is login $url");
  }
  print("This is login ${json.encode(user.loginMap())}");


  if(json.decode(response.body)['success'].toString()=="true")
  {
    print("this is login response ${response.body}");
    currentUser.value = User.fromJSON(json.decode(response.body)['data']);
    return currentUser.value;
  }
  else {
    return User.fromJSON({});
  }

}


Future<bool> balanceUpdate() async {
  final String url = api+'update_balance';
  final client = new http.Client();
  final response = await client.post(
    Uri.parse(url),
    headers: { 'Accept': 'application/json','Content-type': 'application/json' },
    body: json.encode(currentUser.value.balanceMap()),
  );
  print("This is booking $url");
  print("This is booking ${json.encode(currentUser.value.balanceMap())}");


  if(json.decode(response.body)['success'].toString()=="true")
  {
    return true;
  }
  else{
    return false;
  }


}


Future<bool> sendEmail(String email) async {
  final String url = api+'verify';
  final client = new http.Client();
  final response = await client.post(
    Uri.parse(url),
    headers: { 'Accept': 'application/json','Content-type': 'application/json' },
    body: json.encode({"email": email}),
  );
  print("This is booking $url");
  print("This is booking ${json.encode({"email": email})}");


  if(json.decode(response.body)['success'].toString()=="true")
  {
    return true;
  }
  else{
    return false;
  }


}


Future<User> emailRegister(User user) async {
  final String url = api+'signup';
  final client = new http.Client();
  final response = await client.post(
    Uri.parse(url),
   headers: { 'Accept': 'application/json','Content-type': 'application/json' },
    body: json.encode(user.registerMap()),
  );
  print("This is login $url");
  print("register body ${json.encode(user.registerMap())}");
  print("This is login ${response.body}");
  print("this is login response ${json.decode(response.body)['success']}");

  if(json.decode(response.body)['success'].toString()=="true")
  {
    print("this is success");
    currentUser.value = User.fromJSON(json.decode(response.body)['data']);
    return currentUser.value;
  }
  else {
    return User.fromJSON({});
  }

}