import 'package:flutter/cupertino.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/styles/PollColorScheme.dart';

class PollWidgets{
  PollParser _pollParser;
  PollColorScheme _colorScheme = new PollColorScheme();

  /// userid - to create PollParser
  PollWidgets(int userid){
    _pollParser = new PollParser(userid);
  }

  /// Create a poll the user can vote on
  Widget _buildVoteablePoll(){
      //TODO
      return null;
  }

  /// Build a widget containing all the current polls
  ///   Build each separate poll as a voteable poll
  Widget buildCurrentPolls(){
    //TODO
    return null;
  }

  /// Create a view only poll with the options sorted based on votes
  Widget _buildViewOnlyPoll(){
    //TODO
    return null;
  }

  /// Build a widget containing all the past polls
  ///   Build each poll as a view only poll
  Widget buildPastPoll(){
    //TODO



    // notes to self:
    // contained within card, research expansion panel
    // work on this one first
    // get the polls from poll parser and then make seperate
    // cards for each one all stored as the 'children' inside
    // this widget
    return null;
  }

  /// Build an editable poll
  ///   Editable has an option to edit and send user to new page to edit
  Widget _buildUserPoll(){
    //TODO
    return null;
  }

  /// Build a widget containing all polls owned by the current user
  ///   Build each Poll as a UserPoll
  Widget buildUserPolls(){
    //TODO
    return null;
  }

  /// Create a poll for an admin to approve or reject
  Widget _buildPendingPoll(){
    //TODO
    return null;
  }

  /// Build a widget containing all polls pending approval
  ///   Build each poll as a PendingPoll
  Widget buildPendingPolls(){
    //TODO
    return null;
  }
}