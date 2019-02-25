class Poll {
  String _name; //poll name
  String _owner; //owner of the poll
  Map<String, int> _options;  //all the options of the poll

  Poll(String name, String owner, Map<String, int> options){
    //TODO
  }

  /*
   * Add a vote to the selected option
   *    and send an update to the server
   */
  bool voteFor(String option){
    //TODO
    return false;
  }

  /*
   * Add option to the map
   *    and request an update to the server
   */
  bool addOption(String option){
    //TODO
    return false;
  }
}