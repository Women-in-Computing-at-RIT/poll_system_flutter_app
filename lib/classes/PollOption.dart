class PollOption{
  int _id;
  String _text;
  String _imagePath;
  int _tally;

  /// Constructor with text option
  PollOption.withText(int id, int tally, String text){
    _id = id;
    _tally = tally;
    _text = text;
  }

  /// Constructor with image path
  PollOption.withImage(int id, int tally, String imagePath){
    _id = id;
    _tally = tally;
    _imagePath = imagePath;
  }

  /// Text for the option
  String getText(){
    return _text;
  }

  /// Image for the option
  String getImagePath(){
    return _imagePath;
  }

  /// Get option id
  int getId(){
    return _id;
  }

  /// Get number of current votes
  int getVotes(){
    return _tally;
  }

  /// Add a vote
  void voteFor(){
    _tally += 1;
  }
}