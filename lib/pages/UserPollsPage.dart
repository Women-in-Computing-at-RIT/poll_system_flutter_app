import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/NavigationWidget.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class UserPollsPage extends StatefulWidget{
  UserPollsPage({Key key, this.title, this.user}) : super(key: key);

  final String title;
  final User user;

  @override
  _UserPollsPage createState() => _UserPollsPage(user);
}

class _UserPollsPage extends State<UserPollsPage>{
  PollWidgets _pollWidget;
  NavigationWidget _nav;
  User _user;
  _UserPollsPage(User user) {
    _user = user;
    _pollWidget = new PollWidgets(user.getId());
    _nav = new NavigationWidget(user);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: new Column(
            children: <Widget>[
              _pollWidget.buildUserPolls(),
              _nav.getNavBar(context)
            ],
          )
      ),
    );
  }

}