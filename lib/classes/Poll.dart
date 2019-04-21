import 'dart:core';

import 'PollOption.dart';


class Poll {
  String _name; //poll name
  int _id; //poll id
  String _owner; //owner of the poll
  bool _canAddOptions;
  bool _isMultipleSelect;
  bool _isApproved;

  // map of the options for the poll with the poll id as a key
  Map<int, PollOption> _options;

  // Map of user ids and the option(s) they have voted for
  Map<int, List<int>> _votes;

  Poll(String name, String owner, Map<String, int> options){
    _name = name;
    _owner = owner;
    _isApproved = false;
  }

  /// *** Getters *** ///

  /// Get name of poll
  String getName(){
    return _name;
  }

  /// Get the owner of the poll
  String getOwner(){
    return _owner;
  }

  /// Get Map of Options
  Map<int, PollOption> getOptions(){
    return _options;
  }

  /// Get List of Options sorted by number of votes
  ///     sorted highest to lowest
  List<PollOption> getSortedListOfOptions(){
    List<PollOption> _temp = _options.values.toList();
    _temp.sort((a, b) => b.getVotes().compareTo(a.getVotes()));

    return _temp;
  }

  /// Get top option for poll
  PollOption getTopOption(){
    int temp = 0;
    _options.keys.forEach((key) {
      if (_options[key].getVotes() > 0) {
        temp = key;
      }
    });
    return _options[temp];
  }

  /// Return if users other than owner can add options
  bool canAddOption(){
    return _canAddOptions;
  }

  /// Return is users can vote for multiple options
  bool isMultipleSelect(){
    return _isMultipleSelect;
  }

  /// Return if it is approved or not
  bool isApproved(){
    return _isApproved;
  }

  /// Get votes for option with optId
  int getVotesForOption(int optId){
    return _options[optId].getVotes();
  }

  /// *** Updates *** ///

  /// Update poll with given approval
  void approvePoll(bool approval){
    if (!isApproved()){
      _isApproved = true;
    }
  }

  /// Add a vote to the list of selected option(s)
  void placeVotes(List<int> options){
    options.forEach((optId){
      placeVote(optId);
    });
  }

  /// Add vote to single option
  void placeVote(int option){
    _options[option].voteFor();
  }

  /// Check that user can add option
  ///   If yes, add option to the map
  bool addOption(String option){
    if (canAddOption()) {
      var currOptions = getOptions();
      if (!currOptions.containsKey(option)) {
//        currOptions[option] = 0;
        return true;
      }
    }
    return false;
  }


}