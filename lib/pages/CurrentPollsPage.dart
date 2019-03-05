import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Database.dart';

class PollsPage extends StatefulWidget{
  PollsPage({Key key, this.title, this.database}) : super(key: key);

  final String title;
  final Database database;

  @override
  _PollsPage createState() => _PollsPage();
}

class _PollsPage extends State<PollsPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Create inputs to take in username/email and password
    return null;
  }

  /*
   * Build and return all the polls
   * build the list 10 items at a time
   */
  Widget buildAllPolls(){
    //TODO return All Polls Tab
    return null;
  }

  /*
   *
   */
  Widget buildVotablePoll(){
    //TODO
    return null;
  }
}