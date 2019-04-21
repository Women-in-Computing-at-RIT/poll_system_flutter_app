import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/NavigationWidget.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class CurrentPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  CurrentPollsPage({Key key, this.title, this.user }) : super(key: key);

  final String title;
  final User user;

  @override
  _CurrentPollsPage createState() => _CurrentPollsPage(user);
}

class _CurrentPollsPage extends State<CurrentPollsPage> with TickerProviderStateMixin{
  PollWidgets _pollWidgets;
  NavigationWidget _nav;
  User _user;

  _CurrentPollsPage(User user){
    _user = user;
    _pollWidgets = new PollWidgets(user.getId());
    _nav = new NavigationWidget(_user);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: _nav.getNavBar(context, this, _nav.CURRENT),
      appBar: AppBar(
        title: Text("Polling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _pollWidgets.buildCurrentPolls(),
          ],
        ),
      ),
    );
  }

  /// Get the built Current Polls from pollWidget
  Widget getCurrentPolls(){
    //TODO
    return null;
  }
}