import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';

class CreatePollPage extends StatefulWidget {
  PollParser _pollParser;

  CreatePollPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreatePollPage createState() => _CreatePollPage();
}

class _CreatePollPage extends State<CreatePollPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  /// Create another option when user adds another option
  Widget createAnotherOption() {
    //TODO: get pendingPolls as a widget from PollWidget
    return null;
  }

  /// Call pollParser to create a new option
  void acceptPoll() {
    //TODO
  }

}