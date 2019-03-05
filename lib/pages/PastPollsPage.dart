import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Database.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';

class PastPollsPage extends StatefulWidget{
  PastPollsPage({Key key, this.title, this.database}) : super(key: key);

  final String title;
  final Database database;

  @override
  _PastPollsPage createState() => _PastPollsPage();
}

class _PastPollsPage extends State<PastPollsPage>{
  List<Poll> _pastPolls;

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
   * Build and return a single poll
   *    Display the poll name and all options in order of # of votes
   */
  Widget buildPoll(Poll poll){
    //TODO
    return null;
  }

  /*
   * Get all past polls from the database
   */
  List<Poll> getAllPolls(){
    //TODO
    return null;
  }
}