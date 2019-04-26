import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/classes/User.dart';
import 'package:poll_system_flutter_app/pages/AdminPage.dart';
import 'package:poll_system_flutter_app/pages/CreatePollPage.dart';
import 'package:poll_system_flutter_app/pages/CurrentPollsPage.dart';
import 'package:poll_system_flutter_app/pages/PastPollsPage.dart';
import 'package:poll_system_flutter_app/pages/UserPollsPage.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonBuilder.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonWidgets.dart';

class NavigationWidget{
  ButtonWidgets _buttonWidgets = new ButtonWidgets();
  ButtonBar _navBar;

  final int CURRENT = 0;
  final int PAST = 1;
  final int USERS = 2;
  final int CREATE = 3;
  final int ADMIN = 4;

  User _user;
  BuildContext _context;

  NavigationWidget(User user){
    _user = user;
  }

  /// Return _navBar
  BottomNavigationBar getNavBar(BuildContext context, int selected){
    return _buildNavBar(context, selected);
  }

  /// Create and return a navigation ButtonBar based on _userIsAdmin
  BottomNavigationBar _buildNavBar(BuildContext context, int selected){
    _context = context;

    if (_user.isAdmin()) {
      return BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Polls')),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back), title: Text('Past Polls')),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text('My Polls')),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Admin')),
      ],
        currentIndex: selected,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      );
    } else {
      return BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Polls')),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back), title: Text('Past Polls')),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text('My Polls')),
      ],
        currentIndex: selected,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      );
    }
  }

  /// Send user to Current Polls Page
  void _sendToCurrentPollsPage(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) =>
        new CurrentPollsPage(
            title: "Current Polls",
            user: _user
        )
    ));
  }

  /// Send user to Past Polls Page
  void _sendToPastPollsPage(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) =>
        new PastPollsPage(
            title: "Past Polls",
            user: _user
        )
    ));
  }

  /// Send user to User Polls Page
  void _sendToUserPollsPage(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) =>
        new UserPollsPage(
            title: "My Polls",
            user: _user
        )
    ));
  }

  /// Send user to Create a Poll Page
  void _sendToCreatePollPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
        new CreatePollPage(
            title: "Create Poll",
            user: _user
        )
    ));
  }

  /// Send user to Admin Page
  void _sendToAdminPage(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) =>
        new AdminPage(
            title: "Admin",
            user: _user
        )
    ));
  }


  void _onItemTapped(int value) {
    if(value == CURRENT){
      _sendToCurrentPollsPage(_context);
    }
    else if(value == PAST){
      _sendToPastPollsPage(_context);
    }
    else if(value == USERS){
      _sendToUserPollsPage(_context);
    }
    else if(value == ADMIN){
      _sendToAdminPage(_context);
    }
  }
}