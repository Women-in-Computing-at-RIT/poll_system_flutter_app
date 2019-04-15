import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/LoginHandler.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonBuilder.dart';
import 'package:poll_system_flutter_app/widget_creators/InputWidgets.dart';

class LoginPage extends StatefulWidget{

  /// Create LoginPage with key and title
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  InputWidgets inputWidgets = new InputWidgets();
  ButtonBuilder buttonBuilder = new ButtonBuilder();
  // Hold and update username and password based on user input
  String _username = "";
  String _password = "";
  /// Attempt Login with LoginHandler
  ///   If login is successful send to home page (CurrentPollsPage)
  void login(){
    //Login User
    LoginHandler loginHandler = new LoginHandler();
    var _user = loginHandler.login(_username, _password);

  }

  /// Build widgets for user to login
  ///   including inputs for username and password and a login button
  @override
  Widget build(BuildContext context) {

    final image = Image.asset('lib/media/WicHi_purple_transparent.png');

    final email = inputWidgets.buildTextInput("Username", false);

    final password = inputWidgets.buildTextInput("Password", true);

    final loginBtn = buttonBuilder.buildRaisedButton("Login", (){
      LoginHandler loginHandler = new LoginHandler();
      loginHandler.login(_username, _password);
    });

    final hint = Text(
      'To create an account you must go through ritwic.slack.com',
      textAlign: TextAlign.center // just for now
    );
    return Scaffold( // build it all and return it
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(
            bottom: 20,
            top: 20,
            left: 10,
            right: 10
          ),
          shrinkWrap: true,
          children: <Widget>[
            image,
            SizedBox(height: 2.0), // ignore these heights for now
            email,
            SizedBox(height: 8.0), // i really dont know what
            password,
            SizedBox(height: 24.0), // it looks like :),
            loginBtn,
            hint,
            SizedBox(height: 2.0)
          ],
        )
      )
    );
    // TODO: implement build
    // Create inputs to take in username/email and password
  }

}