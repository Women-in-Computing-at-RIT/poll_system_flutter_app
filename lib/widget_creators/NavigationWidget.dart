import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonWidgets.dart';

class NavigationWidget{
  ButtonWidgets _buttonWidgets = new ButtonWidgets();
  ButtonBar _navBar;

  bool _userIsAdmin;

  NavigationWidget(bool userIsAdmin){
    //TODO
  }

  /// Return _navBar
  ButtonBar getNavBar(){
    //TODO
    return null;
  }

  /// Create and return a navigation ButtonBar based on _userIsAdmin
  ButtonBar _buildNavBar(){
    //TODO
    return null;
  }

  /// Send user to Current Polls Page
  void _sendToCurrentPollsPage(){
    //TODO
  }

  /// Send user to Past Polls Page
  void _sendToPastPollsPage(){
    //TODO
  }

  /// Send user to User Polls Page
  void _sendToUserPollsPage(){
    //TODO
  }

  /// Send user to Create a Poll Page
  void _sendToCreatePollPage(){
    //TODO
  }

  /// Send user to Admin Page
  void _sendToAdminPage(){
    //TODO
  }

}