import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/pages/AdminPage.dart';
import 'package:poll_system_flutter_app/pages/CreatePollPage.dart';
import 'package:poll_system_flutter_app/pages/CurrentPollsPage.dart';
import 'package:poll_system_flutter_app/pages/PastPollsPage.dart';
import 'package:poll_system_flutter_app/pages/UserPollsPage.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonBuilder.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonWidgets.dart';

class NavigationWidget{
  ButtonWidgets _buttonWidgets = new ButtonWidgets();
  ButtonBar _navBar;

  User _user;

  NavigationWidget(User user){
    _user = user;
  }

  /// Return _navBar
  ButtonBar getNavBar(BuildContext context){
    return _buildNavBar(context);
  }

  /// Create and return a navigation ButtonBar based on _userIsAdmin
  ButtonBar _buildNavBar(BuildContext context){
    //TODO

    ButtonBuilder bb = new ButtonBuilder();
    if (_user.isAdmin()) {
      return new ButtonBar(
        children: <Widget>[
          bb.buildFlatButton("Polls", () { _sendToCurrentPollsPage(context); }),
          bb.buildFlatButton("Past", (){ _sendToPastPollsPage(context); }),
          bb.buildFlatButton("My Polls", (){ _sendToUserPollsPage(context); }),
          bb.buildFlatButton("Admin", (){ _sendToAdminPage(context); })
        ],
      );
    } else {
      return new ButtonBar(
        children: <Widget>[
          bb.buildFlatButton("Polls", () { _sendToCurrentPollsPage(context); }),
          bb.buildFlatButton("Past", (){ _sendToPastPollsPage(context); }),
          bb.buildFlatButton("My Polls", (){ _sendToUserPollsPage(context); })
        ],
      );
    }
  }

  /// Send user to Current Polls Page
  void _sendToCurrentPollsPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new CurrentPollsPage(
            title: "Current Polls",
            user: _user
        )
    ));
  }

  /// Send user to Past Polls Page
  void _sendToPastPollsPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new PastPollsPage(
            title: "Past Polls",
            user: _user
        )
    ));
  }

  /// Send user to User Polls Page
  void _sendToUserPollsPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new UserPollsPage(
            title: "My Polls",
            user: _user
        )
    ));
  }

  /// Send user to Create a Poll Page
  void _sendToCreatePollPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new CreatePollPage(
            title: "Create Poll",
            user: _user
        )
    ));
  }

  /// Send user to Admin Page
  void _sendToAdminPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new AdminPage(
            title: "Admin",
            user: _user
        )
    ));
  }

}