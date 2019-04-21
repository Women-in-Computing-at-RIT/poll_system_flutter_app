import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class PastPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  PastPollsPage({Key key, this.title, this.user}) : super(key: key);

  final String title;
  final User user;

  @override
  _PastPollsPage createState() => _PastPollsPage(user);
}

class _PastPollsPage extends State<PastPollsPage>{
  PollWidgets _pollWidget;
  User _user;
  _PastPollsPage(User user) {
    _user = user;
    _pollWidget = new PollWidgets(user.getId());
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
          child: new Column(
            children: <Widget>[
              _pollWidget.buildPastPoll()
            ],
          ),
      )
    // Create inputs to take in username/email and password
    );
  }

}