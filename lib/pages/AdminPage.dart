import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class AdminPage extends StatefulWidget {
  //PollParser _pollParser;
  //PollWidgets _pollWidget;

  AdminPage({Key key, this.title, this.user}) : super(key: key);

  final String title;
  final User user;

  @override
  _AdminPage createState() => _AdminPage();
}

class _AdminPage extends State<AdminPage> {
  PollParser _pollParser;
  PollWidgets _pollWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: getPendingPolls(),
            )
        );
  }

  /// Get pending polls as widget from PollWidgets
  Widget getPendingPolls() {
    return _pollWidget.buildPendingPolls();
  }

  /// Update approval status of poll using pollParser
  void acceptPoll(int, bool) {
    _pollParser.approvePoll(bool, int);
  }

}
