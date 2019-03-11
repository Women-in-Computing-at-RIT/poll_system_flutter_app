class PollOption{
  int _id;
  String _text;
  String _imagePath;
  int _tally;

  /// Constructor with text option
  PollOption.withText(int id, int tally, String text){
    //TODO
  }

  /// Constructor with image path
  PollOption.withImage(int id, int tally, String imagePath){
    //TODO
  }

  /// Text for the option
  String getText(){
    //TODO
    return null;
  }

  /// Image for the option
  String getImagePath(){
    //TODO
    return null;
  }

  /// Get option id
  String getId(){
    //TODO
    return null;
  }

  /// Get number of current votes
  int getVotes(){
    //TODO
    return null;
  }

  /// Add a vote
  void voteFor(){
    //TODO
  }
}