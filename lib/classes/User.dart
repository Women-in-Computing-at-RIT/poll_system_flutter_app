class User{
  String _name; // user name
  int _id; //user id
  bool _isAdmin; // check if use is admin


  User(String name, int id, bool isAdmin){
    _name = name;
    _id = id;
    _isAdmin = isAdmin;
  }

  /// Return name of poll
  String getName(){
    return _name;
  }

  /// Return user id
  int getId(){
    return _id;
  }

  /// Return isAdmin
  bool isAdmin(){
    return _isAdmin;
  }
}