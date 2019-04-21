import 'package:poll_system_flutter_app/classes/ApiAccess.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';

class PollParser{
  ApiAccess _api;

  //Polls
  Map<int, Poll> _currentPolls;
  Map<int, Poll> _pastPolls;
  Map<int, Poll> _pendingPolls;
  Map<int, Poll> _userPolls;

  //User Id to get user polls
  int _userId;

  PollParser(int userId){
    _api = new ApiAccess();
    _userId = userId;
  }

  /// Generic Function to parse objects from a List<Map<String, dynamic>
  ///   into a Poll and return as a Map<int, Poll>
  Map<int, Poll> _parsePolls(List<Map<String, dynamic>> rawPolls){
    if (rawPolls == null){
      return new Map();
    } else {
      return new Map.fromIterable(rawPolls, key: (v) => v[0], value: (v) => v[1]);
    }
  }

  /// Call parser on raw current polls received from api
  ///   and add to map of current polls
  void _parseCurrentPolls(){
    _parsePolls(_api.getAllCurrentPolls());
  }

  /// Call parser on raw past polls received from api
  ///   and add to map of past polls
  void _parsePastPolls(){
    _parsePolls(_api.getAllPastPolls());
  }


  /// Call parser on raw pending polls received from api
  ///   and add to map of pending polls
  void _parsePendingPolls(){
    _parsePolls(_api.getAllPendingPolls());
  }


  /// Call parser on raw user polls received from api
  ///   and add to map of user polls
  void _parseUserPolls(){
    _parsePolls(_api.getPollsForUser(_userId));
  }

  /// Check that map of current polls has been initialized
  ///   If not call parser
  ///   If yes return map of current polls
  Map<int, Poll> getCurrentPolls(){
    if(_currentPolls == null) {
      _parseCurrentPolls();
    }
    return _currentPolls;
  }

  /// Check that map of past polls has been initialized
  ///   If not call parser
  ///   If yes return map of past polls
  Map<int, Poll> getPastPolls(){
    if (_pastPolls == null) {
      _parsePastPolls();
    }
    return _pastPolls;
  }

  /// Check that map of pending polls has been initialized
  ///   If not call parser
  ///   If yes return map of pending polls
  Map<int, Poll> getPendingPolls(){
    if (_pendingPolls == null) {
      _parsePendingPolls();
    }
    return _pendingPolls;
  }

  /// Check that map of user's polls has been initialized
  ///   If not call parser
  ///   If yes return map of user's polls
  Map<int, Poll> getUserPolls(){
    if (_userPolls == null) {
      _parseUserPolls();
    }
    return _userPolls;
  }

  /// Call the api to create a new pending poll
  void createPoll(String name, bool canAddOption, bool multplieAllowed, List<String> options){
    _api.createPoll(name, canAddOption, multplieAllowed, options);
  }


  /// Call apiAccess to update poll with given id
  ///   isApproved    poll is approved by admin
  void approvePoll(bool isApproved, int pollId){
    _api.approvePoll(isApproved, pollId);
  }
}