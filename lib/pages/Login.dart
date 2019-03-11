import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/LoginHandler.dart';

class LoginPage extends StatefulWidget{
  LoginHandler loginHandler = new LoginHandler();

  /// Create LoginPage with key and title
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  // Hold and update username and password based on user input
  String _username = "";
  String _password = "";

  /// Attempt Login with LoginHandler
  ///   If login is successful send to home page (CurrentPollsPage)
  void login(){
    //TODO attempt login with login handler
  }

  /// Build widgets for user to login
  ///   including inputs for username and password and a login button
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Create inputs to take in username/email and password
    return null;
  }

}