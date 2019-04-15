import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/LoginHandler.dart';
import 'package:poll_system_flutter_app/pages/CurrentPollsPage.dart';
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

    if(_user == null){
      Scaffold.of(context).showSnackBar(
          new SnackBar(
              content: Text("Incorrect username or password"),
              duration: Duration(seconds: 10)
          )
      );
    } else {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>
            new CurrentPollsPage(
              title: "Current Polls",
              user: _user
            )
      ));
    }
  }

  /// Build widgets for user to login
  ///   including inputs for username and password and a login button
  @override
  Widget build(BuildContext context) {

    final image = Image.asset('lib/media/WicHi_purple_transparent.png');

    final email = inputWidgets.buildTextInput("Username", false);

    final password = inputWidgets.buildTextInput("Password", true);

    final loginBtn = buttonBuilder.buildRaisedButton("Login", (){
      login();
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
            email,
            password,
            loginBtn,
            hint,
          ],
        )
      )
    );
    // TODO: implement build
    // Create inputs to take in username/email and password
  }

}