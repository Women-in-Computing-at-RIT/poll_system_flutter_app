import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/Poll.dart';
import 'package:poll_system_flutter_app/classes/PollParser.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/pages/CreatePollPage.dart';
import 'package:poll_system_flutter_app/styles/PollColorScheme.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonBuilder.dart';
import 'package:poll_system_flutter_app/widget_creators/InputWidgets.dart';

class PollExpansionPanel {
  final WidgetBuilder bodyBuilder;
  final String title;
  final String subtitle;
  bool isExpandedInitially;

  PollExpansionPanel({
    @required this.bodyBuilder,
    @required this.title,
    this.subtitle = "",
    this.isExpandedInitially = false,
  })  : assert(title != null),
        assert(bodyBuilder != null);

  ExpansionPanelHeaderBuilder get headerBuilder =>
          (context, isExpanded) => new Row(children: [
        new SizedBox(width: 100.0, child: new Text(title)),
        new Text(subtitle)
      ]);
}

class ExpansionList extends StatefulWidget {
  /// The items that the expansion list should display; this can change
  /// over the course of the object but probably shouldn't as it won't
  /// transition nicely or anything like that.
  final List<PollExpansionPanel> items;

  ExpansionList(this.items) {
    // quick check to make sure there's no duplicate titles.
    assert(new Set.from(items.map((li) => li.title)).length == items.length);
  }

  @override
  State<StatefulWidget> createState() => new ExpansionListState();
}

class ExpansionListState extends State<ExpansionList> {
  Map<String, bool> expandedByTitle = new Map();

  @override
  Widget build(BuildContext context) {
    return new ExpansionPanelList(
      children: widget.items
          .map(
            (item) => new ExpansionPanel(
            headerBuilder: item.headerBuilder,
            body: new Builder(builder: item.bodyBuilder),
            isExpanded:
            expandedByTitle[item.title] ?? item.isExpandedInitially),
      )
          .toList(growable: false),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          expandedByTitle[widget.items[index].title] = !isExpanded;
        });
      },
    );
  }
}

class PollWidgets{
  PollParser _pollParser;
  PollColorScheme _colorScheme;
  User _user;

  /// userid - to create PollParser
  PollWidgets(User user){
    _pollParser = new PollParser(user.getId());
    _colorScheme = new PollColorScheme();
  }

  /// Create a poll the user can vote on
  PollExpansionPanel _buildVoteablePoll(Poll poll){
    List<Widget> lst = new List();
    poll.getSortedListOfOptions().forEach((value)=>
        lst.add(Text(value.getText())));

    if(poll.isMultipleSelect()){
      Widget check = new InputWidgets().buildListOfCheckboxes(lst);
      return new PollExpansionPanel(bodyBuilder: (context) =>
          Column(
            children: <Widget>[check,
            ButtonBuilder().buildFlatButton("Vote", () {
            /*TODO */
            })],
          ),
          title: poll.getName(),
          subtitle: poll.getTopOption().getText());
    } else {
      Widget radio = new InputWidgets().buildListOfRadios(lst);
      return new PollExpansionPanel(bodyBuilder: (context) =>
          Column(
            children: <Widget>[radio,
            ButtonBuilder().buildFlatButton("Vote", () {
              /*TODO: Add function call */
            })
            ],),
          title: poll.getName(),
          subtitle: poll.getTopOption().getText());
    }
  }

  /// Build a widget containing all the current polls
  ///   Build each separate poll as a voteable poll
  Widget buildCurrentPolls(){
    List<PollExpansionPanel> lst = new List(); //create empty list
    Map<int, Poll>  polls = _pollParser.getCurrentPolls(); //store poll map

    if ( polls != null ) {
      polls.forEach((key, value) => // for each poll in polls, add to lst
      lst.add(_buildVoteablePoll(value)));
    }
    return ExpansionList(lst);
  }

  /// Create a view only poll with the options sorted based on votes
  PollExpansionPanel _buildViewOnlyPoll(Poll poll){
    List<Widget> lst = new List();
    poll.getSortedListOfOptions().forEach((value)=>
        lst.add(Text(value.getText())));
    return new PollExpansionPanel(bodyBuilder: (context) => Column(
        children: lst,),
        title: poll.getName(),
        subtitle: poll.getTopOption().getText());
  }

  /// Build a widget containing all the past polls
  ///   Build each poll as a view only poll
  Widget buildPastPoll(){
    List<PollExpansionPanel> lst = new List();
    Map<int, Poll>  polls = _pollParser.getPastPolls();

    if ( polls != null ) {
      polls.forEach((key, value) =>
          lst.add(_buildViewOnlyPoll(value)));
    }
    return new ExpansionList(lst);
  }

  /// Build an editable poll
  ///   Editable has an option to edit and send user to new page to edit
  ListView _buildUserPoll(Poll poll){
    return new ListView.builder(itemBuilder: (context, int) => Column(
      children: <Widget>[Text(poll.getName()),
        Text(poll.getTopOption().getText()),
       ButtonBuilder().buildFlatButton("Edit", () {
         Navigator.push(context, MaterialPageRoute(
            builder: (context) =>
            new CreatePollPage(
                title: "Create Poll",
                user: _user,
                poll: poll
            )
         ));
       }) ,
      ]
    ));
  }

  /// Build a widget containing all polls owned by the current user
  ///   Build each Poll as a UserPoll
  Widget buildUserPolls(){
    Map<int, Poll>  polls = _pollParser.getUserPolls();
    List<Widget> lst = new List();
    if ( polls != null ) {
      polls.forEach((key, value) =>
          lst.add(_buildUserPoll(value)));
    }
    ListView pollLst = new ListView.builder(itemBuilder: (context, int) =>
      Column(
        children: lst,
      )
    );
    return pollLst;
  }

  /// Create a poll for an admin to approve or reject
  PollExpansionPanel _buildPendingPoll(Poll poll){
    List<Widget> lst = new List();
    poll.getSortedListOfOptions().forEach((value)=>
        lst.add(Text(value.getText())));
    lst.add(Row(
        children: <Widget>[
          ButtonBuilder().buildFlatButton("Approve", () {
          _pollParser.approvePoll(true, poll.getId());
        }),
          ButtonBuilder().buildFlatButton("Decline", () {
          _pollParser.approvePoll(false, poll.getId());
        })
        ]));
    return new PollExpansionPanel(bodyBuilder: (context) => Column(
        children: lst,),
        title: poll.getName(),
        subtitle: null);
  }

  /// Build a widget containing all polls pending approval
  ///   Build each poll as a PendingPoll
  Widget buildPendingPolls(){
    Map<int, Poll>  polls = _pollParser.getPendingPolls();
    List<PollExpansionPanel> lst = new List();
    if ( polls != null ) {
      polls.forEach((key, value) =>
          lst.add(_buildPendingPoll(value)));
    }
    return new ExpansionList(lst);
  }
}