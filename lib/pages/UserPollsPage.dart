import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class UserPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  UserPollsPage({Key key, this.title, this.user}) : super(key: key);

  final String title;
  final User user;

  @override
  _UserPollsPage createState() => _UserPollsPage(user);
}

class _UserPollsPage extends State<UserPollsPage>{
  PollWidgets _pollWidget;
  User _user;
  _UserPollsPage(User user) {
    _user = user;
    _pollWidget = new PollWidgets(user.getId());
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Center(
          child: new Column(
            children: <Widget>[
              Text("User Polls"),
              _pollWidget.buildUserPolls()
            ],
          ),
        )
      // Create inputs to take in username/email and password
    );
  }

}