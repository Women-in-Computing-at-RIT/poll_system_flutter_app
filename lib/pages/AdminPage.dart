import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class AdminPage extends StatefulWidget {
  //PollParser _pollParser;
  //PollWidgets _pollWidget;

  AdminPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AdminPage createState() => _AdminPage();
}

class _AdminPage extends State<AdminPage> {
  PollParser _pollParser;
  PollWidgets _pollWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // build it all and return it
        backgroundColor: Colors.white,
        //appBar:  is a nav widget necessary for the bottom?
        body: Center(
            child: ExpansionPanelList( //accordion-style, but cant figure it out

            )
        )
    );
  }

  /// Get pending polls as widget from PollWidgets
  Widget getPendingPolls() {
    return _pollWidget.buildPendingPolls();
  }

  /// Update approval status of poll using pollParser
  void acceptPoll(int, bool) {
    _pollParser.getPendingPolls().update(int, bool);
  }

}
