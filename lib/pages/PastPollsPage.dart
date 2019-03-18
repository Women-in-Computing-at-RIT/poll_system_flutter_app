import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class PastPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  PastPollsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PastPollsPage createState() => _PastPollsPage();
}

class _PastPollsPage extends State<PastPollsPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Create inputs to take in username/email and password

    return null;
  }

  /// Get all the past polls built by the PollWidgets
  Widget getPastPolls(){
    //TODO return
    return PollWidgets;
  }

}