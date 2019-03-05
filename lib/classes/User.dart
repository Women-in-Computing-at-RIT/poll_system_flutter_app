import 'package:poll_system_flutter_app/classes/Poll.dart';

class User{
  String _name; // user name
  bool _isAdmin; // check if use is admin
  List<Poll> _polls; //polls!


  User(String name, bool isAdmin){
    //TODO
  }

  /*
   * return a list of the current polls
   */
  List<Poll> getPolls(){
    //TODO
    return null;
  }

  /*
   * Return name of poll
   */
  String getName(){
    //TODO
    return null;
  }
}