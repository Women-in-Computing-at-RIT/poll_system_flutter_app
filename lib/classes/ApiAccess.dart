import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ApiAccess {
  //TODO
  String path;
  Database database;

  ApiAccess(){
    //TODO
  }

  /// Call the database to insert a new pending poll
  void createPoll(String name, bool canAddOption, bool multplieAllowed, List<String> options){
    //TODO
  }

  /// Call database to attempt a login
  ///   return first Map from resulting List<Map<String, dynamic>>
  Map<String, dynamic> login(String username, String password){
    //TODO
    return null;
  }

  /// Call database to get all approved polls
  ///   with a lifespan of less than 2 weeks since approval
  List<Map<String, dynamic>> getAllCurrentPolls(){
    //TODO
    return null;
  }

  /// Call database to get all approved polls
  ///   with a lifespan of more than 2 weeks since approval
  List<Map<String, dynamic>> getAllPastPolls(){
    //TODO
    return null;
  }

  /// Call database to get all unapproved polls
  List<Map<String, dynamic>> getAllPendingPolls(){
    //TODO
    return null;
  }

  /// Call database to get all polls
  ///   owned by the user with the given id
  List<Map<String, dynamic>> getPollsForUser(int userid){
    //TODO
    return null;
  }

  /// Call database to update poll with given id
  ///   update approval of the poll
  void approvePoll(bool isApproved, int pollId){
    //TODO
  }


}