import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class PastPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  PastPollsPage({Key key, this.title, this.userid}) : super(key: key);

  final String title;
  final int userid;

  @override
  _PastPollsPage createState() => _PastPollsPage(userid);
}

class _PastPollsPage extends State<PastPollsPage>{
  PollWidgets _pollWidget;
  _PastPollsPage(int userid) {
    _pollWidget = new PollWidgets(userid);
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
          child: new Column(
            children: <Widget>[
              Title(color: null, child: Text("Past Polls")),
              _pollWidget.buildPastPoll()
            ],
          ),
      )
    // Create inputs to take in username/email and password
    );
  }

}