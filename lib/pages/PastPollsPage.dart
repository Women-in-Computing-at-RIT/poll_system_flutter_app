import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/NavigationWidget.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class PastPollsPage extends StatefulWidget{
  PastPollsPage({Key key, this.title, this.user}) : super(key: key);

  final String title;
  final User user;

  @override
  _PastPollsPage createState() => _PastPollsPage(user);
}

class _PastPollsPage extends State<PastPollsPage> with TickerProviderStateMixin{
  PollWidgets _pollWidget;
  NavigationWidget _nav;
  User _user;
  _PastPollsPage(User user) {
    _user = user;
    _pollWidget = new PollWidgets(user.getId());
    _nav = new NavigationWidget(_user);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _nav.getNavBar(context, this, _nav.PAST),
      appBar: AppBar(
        title: Text("Polling App"),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            _pollWidget.buildPastPoll(),
          ],
        )
      ),
    );
  }

}