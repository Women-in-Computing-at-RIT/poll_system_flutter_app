import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/styles/PollColorScheme.dart';

class PollWidgets{
  PollParser _pollParser;
  PollColorScheme _colorScheme;

  /// userid - to create PollParser
  PollWidgets(int userid){
    _pollParser = new PollParser(userid);
    _colorScheme = new PollColorScheme();
  }

  /// Create a poll the user can vote on
  ExpansionPanel _buildVoteablePoll(Poll poll){
    return new ExpansionPanel(
        headerBuilder: null,
        body: null
    );
  }

  /// Build a widget containing all the current polls
  ///   Build each separate poll as a voteable poll
  Widget buildCurrentPolls(){
    ExpansionPanelList lst = new ExpansionPanelList(); //create empty epl
    Map<int, Poll>  polls= _pollParser.getCurrentPolls(); //store poll map
    polls.forEach((key, value) =>
    // for each poll in polls, add to epl
    lst.children.add(_buildViewOnlyPoll(value)));
    return lst;
  }

  /// Create a view only poll with the options sorted based on votes
  ExpansionPanel _buildViewOnlyPoll(Poll poll){
    //TODO
    return null;
  }

  /// Build a widget containing all the past polls
  ///   Build each poll as a view only poll
  Widget buildPastPoll(){
    ExpansionPanelList lst = new ExpansionPanelList();
    Map<int, Poll>  polls= _pollParser.getPastPolls();
    polls.forEach((key, value) =>
        lst.children.add(_buildViewOnlyPoll(value)));
    return lst;
  }

  /// Build an editable poll
  ///   Editable has an option to edit and send user to new page to edit
  ExpansionPanel _buildUserPoll(Poll poll){
    //TODO
    return null;
  }

  /// Build a widget containing all polls owned by the current user
  ///   Build each Poll as a UserPoll
  Widget buildUserPolls(){
    ExpansionPanelList lst = new ExpansionPanelList();
    Map<int, Poll>  polls= _pollParser.getUserPolls();
    polls.forEach((key, value) =>
    lst.children.add(_buildViewOnlyPoll(value)));
    return lst;
  }

  /// Create a poll for an admin to approve or reject
  ExpansionPanel _buildPendingPoll(Poll poll){
    //TODO
    return null;
  }

  /// Build a widget containing all polls pending approval
  ///   Build each poll as a PendingPoll
  Widget buildPendingPolls(){
    ExpansionPanelList lst = new ExpansionPanelList();
    Map<int, Poll>  polls= _pollParser.getPendingPolls();
    polls.forEach((key, value) =>
    lst.children.add(_buildViewOnlyPoll(value)));
    return lst;
  }
}