import 'dart:core';
import 'dart:core';

import 'package:poll_system_flutter_app/classes/PollOption.dart';

class Poll {
  String _name; //poll name
  int _id; //poll id
  int _owner; //owner of the poll
  bool _canAddOptions;
  bool _isMultipleSelect;

  // map of the options for the poll with the poll id as a key
  Map<int, PollOption> _options;

  // Map of user ids and the option(s) they have voted for
  Map<int, List<int>> _votes;

  Poll(String name, String owner, Map<String, int> options){
    //TODO
  }

  /// *** Getters *** ///

  /// Get name of poll
  String getName(){
    //TODO
    return null;
  }

  /// Get Map of Options
  Map<int, PollOption> getOptions(){
    //TODO
    return null;
  }

  /// Get top option for poll
  PollOption getTopOption(){
    //TODO
    return null;
  }

  /// Return if users other than owner can add options
  bool canAddOption(){
    //TODO
    return null;
  }

  /// Return is users can vote for multiple options
  bool isMultipleSelect(){
    //TODO
    return null;
  }

  /// Get votes for option with optId
  int getVotesForOption(int optId){
    //TODO
    return null;
  }

  /// *** Updates *** ///

  /// Update poll with given approval
  void approvePoll(bool approval){
    //TODO
  }

  /// Add a vote to the list of selected option(s)
  void placeVote(List<int> options){
    //TODO
  }

  /// Add vote to single option
  void placedVote(int option){
    //TODO
  }

  /// Check that user can add option
  ///   If yes, add option to the map
  bool addOption(String option){
    //TODO
    return null;
  }
}