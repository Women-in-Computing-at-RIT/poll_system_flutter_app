import 'package:poll_system_flutter_app/classes/Poll.dart';
import 'package:poll_system_flutter_app/classes/User.dart';

class ApiAccess {
  //TODO

  ApiAccess(){
    //TODO
  }

  void createPoll(String name, bool canAddOption, bool multplieAllowed, List<String> options){
    //TODO
  }

  User login(String username, String password){
    //TODO
    return null;
  }

  List<Poll> getAllCurrentPolls(){
    //TODO
    return null;
  }

  List<Poll> getAllPastPolls(){
    //TODO
    return null;
  }

  List<Poll> getAllPendingPolls(){
    //TODO
    return null;
  }

  List<Poll> getPollsForUser(String userid){
    //TODO
    return null;
  }

  void approvePoll(bool isApproved, int pollId){
    //TODO
  }


}