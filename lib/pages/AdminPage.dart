import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';

class AdminPage extends StatefulWidget {
  List<Poll> _pendingPolls;

  @override
  _AdminPage createState() => _AdminPage();
}

class _AdminPage extends State<AdminPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  Widget getPendingPolls() {
    //TODO: get pendingPolls as a widget from PollWidget
    return null;
  }

  void acceptPoll(int, bool) {
    //TODO: Implement this method
  }

}
