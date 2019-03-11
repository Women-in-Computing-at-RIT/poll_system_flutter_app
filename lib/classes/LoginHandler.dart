import 'package:poll_system_flutter_app/classes/ApiAccess.dart';
import 'package:poll_system_flutter_app/classes/User.dart';

class LoginHandler{
  ApiAccess _api;

  LoginHandler(){
    _api = new ApiAccess();
  }

  User login(String username, String password){
    //TODO return user based on ApiAccess login
    return null;
  }
}