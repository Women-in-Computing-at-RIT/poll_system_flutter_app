import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/classes/User.dart';

class CreatePollPage extends StatefulWidget {
  PollParser _pollParser;

  CreatePollPage({Key key, this.title, this.user, this.poll = null}) : super(key: key);

  final String title;
  final User user;
  Poll poll;

  @override
  _CreatePollPage createState() => _CreatePollPage(user, poll);
}

class _CreatePollPage extends State<CreatePollPage> {

  _CreatePollPage(User user, Poll poll){
    //TODO
  }

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

  /// Submit poll to pollParser
  void submitPoll() {
    //TODO
  }

  /// Validate inputs and check that everything has been filled out
  void validateInputs(){
    //TODO
  }

}