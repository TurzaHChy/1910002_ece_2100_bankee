

import '../accounts.dart';

class User{
  int id=0;
  String name='';
  String email='';
  String password='';
  double balance=0;

  User();

  User.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id=jsonMap['id']!=null ? jsonMap['id'] : 0;
      name=jsonMap['name']!=null ? jsonMap['name'] : '';
      email=jsonMap['email']!=null ? jsonMap['email'].toString() : '';
      password=jsonMap['password']!=null ? jsonMap['password'] : '';
      balance=jsonMap['balance']!=null ? double.parse(jsonMap['balance'].toString()) : 0;
    } catch (e) {

    }

  }

  Map loginMap(){
    var map = new Map<String, dynamic>();
    map['email']=email;
    map['password']=password;
    return map;
  }

  Map registerMap(){
    var map = new Map<String, dynamic>();
    map['name']=name;
    map['email']=email;
    map['password']=password;
    map['balance']=account_balance.value;
    return map;
  }
  Map balanceMap(){
    var map = new Map<String, dynamic>();
    map['id']=id;
    map['balance']=account_balance.value;
    return map;
  }



}
