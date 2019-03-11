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
  int _userid;

  PollParser(int userid){
    _api = new ApiAccess();

    //TODO init polls
  }

  /// Generic Function to parse objects from a List<Map<String, dynamic>
  ///   into a Poll and return as a Map<int, Poll>
  Map<int, Poll> _parsePolls(List<Map<String, dynamic>> rawPolls){
    //TODO
    return null;
  }

  /// Call parser on raw current polls received from api
  ///   and add to map of current polls
  void _parseCurrentPolls(){
    //TODO
  }

  /// Call parser on raw past polls received from api
  ///   and add to map of past polls
  void _parsePastPolls(){
    //TODO
  }


  /// Call parser on raw pending polls received from api
  ///   and add to map of pending polls
  void _parsePendingPolls(){
    //TODO
  }


  /// Call parser on raw user polls received from api
  ///   and add to map of user polls
  void _parseUserPolls(){
    //TODO
  }

  /// Check that map of current polls has been initialized
  ///   If not call parser
  ///   If yes return map of current polls
  Map<int, Poll> getCurrentPolls(){
    //TODO
    return null;
  }

  /// Check that map of past polls has been initialized
  ///   If not call parser
  ///   If yes return map of past polls
  Map<int, Poll> getPastPolls(){
    //TODO
    return null;
  }

  /// Check that map of pending polls has been initialized
  ///   If not call parser
  ///   If yes return map of pending polls
  Map<int, Poll> getPendingPolls(){
    //TODO
    return null;
  }

  /// Check that map of user's polls has been initialized
  ///   If not call parser
  ///   If yes return map of user's polls
  Map<int, Poll> getUserPolls(){
    //TODO
    return null;
  }
}