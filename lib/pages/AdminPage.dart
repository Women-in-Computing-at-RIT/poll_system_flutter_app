import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class AdminPage extends StatefulWidget {
  PollParser _pollParser;
  PollWidgets _pollWidget;

  @override
  _AdminPage createState() => _AdminPage();
}

class _AdminPage extends State<AdminPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  /// Get pending polls as widget from PollWidgets
  Widget getPendingPolls() {
    //TODO: get pendingPolls as a widget from PollWidget
    return null;
  }

  /// Update approval status of poll using pollParser
  void acceptPoll(int, bool) {
    //TODO:
  }

}
