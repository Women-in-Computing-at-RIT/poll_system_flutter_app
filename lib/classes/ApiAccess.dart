import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ApiAccess {
  //TODO
  String path;
  Database database;

  ApiAccess(){
    //TODO
  }

  void createPoll(String name, bool canAddOption, bool multplieAllowed, List<String> options){
    //TODO
  }

  Map<String, dynamic> login(String username, String password){
    //TODO
    return null;
  }

  List<Map<String, dynamic>> getAllCurrentPolls(){
    //TODO
    return null;
  }

  List<Map<String, dynamic>> getAllPastPolls(){
    //TODO
    return null;
  }

  List<Map<String, dynamic>> getAllPendingPolls(){
    //TODO
    return null;
  }

  List<Map<String, dynamic>> getPollsForUser(String userid){
    //TODO
    return null;
  }

  void approvePoll(bool isApproved, int pollId){
    //TODO
  }


}