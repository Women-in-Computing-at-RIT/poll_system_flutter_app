import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Database.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';

class AdminPage extends StatefulWidget {
  Database _database;
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

  List<Poll> getPendingPolls() {
    //TODO: This
    return null;
  }

  void acceptPoll(int, bool) {
    //TODO: Implement this method
  }

  Widget buildAllPolls() {
    //TODO: build polls
    return null;
  }

  Widget buildPoll(Poll) {
    //TODO: build poll
    return null;
  }
}
