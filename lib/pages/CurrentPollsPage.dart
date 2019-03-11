import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/widget_creators/PollWidgets.dart';

class CurrentPollsPage extends StatefulWidget{
  PollWidgets _pollWidget;

  CurrentPollsPage({Key key, this.title }) : super(key: key);

  final String title;

  @override
  _CurrentPollsPage createState() => _CurrentPollsPage();
}

class _CurrentPollsPage extends State<CurrentPollsPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Create inputs to take in username/email and password
    return null;
  }

  /// Get the built Current Polls from pollWidget
  Widget getCurrentPolls(){
    //TODO
    return null;
  }
}