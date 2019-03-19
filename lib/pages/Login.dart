import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/LoginHandler.dart';

class LoginPage extends StatefulWidget{

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
    LoginHandler loginHandler = new LoginHandler();
    loginHandler.login(_username, _password);
    //TODO attempt login with login handler
  }

  /// Build widgets for user to login
  ///   including inputs for username and password and a login button
  @override
  Widget build(BuildContext context) {

    final icon = Image.asset('../media/WicHi_purple_transparent.png');

    final email = TextFormField( // build email field
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'username',
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0))
        )
    );

    final password = TextFormField( // build password field
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0))
      )
    );

    final hint = Text(
      'To create an account you must go through ritwic.slack.com',
      textAlign: TextAlign.center // just for now
    );
    return Scaffold( // build it all and return it
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            icon,
            SizedBox(height: 2.0), // ignore these heights for now
            email,
            SizedBox(height: 8.0), // i really dont know what
            password,
            SizedBox(height: 24.0), // it looks like :),
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