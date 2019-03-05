import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Database.dart';

class LoginPage extends StatefulWidget{
  Database _database;
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  void login(){
    //TODO attempt login
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Create inputs to take in username/email and password
    return null;
  }

}