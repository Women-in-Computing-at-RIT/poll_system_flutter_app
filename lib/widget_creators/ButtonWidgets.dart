import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/styles/ButtonThemes.dart';

class ButtonWidgets{
  ButtonThemes _buttonThemes = new ButtonThemes();

  /// Create a return a RaisedButton with the given text and function
  ///   using the appropriate theme from ButtonThemes
  RaisedButton buildRaisedButton(String text, Function func){
    return new RaisedButton(
        child: Text(text),
          elevation: 4.0,
          disabledElevation: 0.0, //elevation of button when pressed
          onPressed: func); //do something
  }

  /// Create a return a FlatButton with the given text and function
  ///   using the appropriate theme from ButtonThemes
  FlatButton buildFlatButton(String text, Function func){
    return new FlatButton(
        onPressed: func,
        child: Text(text));
  }

  /// Create a return a IconButton with the given text and function
  ///   using the appropriate theme from ButtonThemes
  IconButton buildIconButton(String text, Function func){
    print("&&&&&&&&&&&&&&&&&&&&&&&&");
    return new IconButton(
        icon: Image.asset(text),//Icon(Icons.check, semanticLabel: text),
        onPressed: func
    );
  }

  /// Create a return a ButtonBar with the given list of icon buttons
  ///   using the appropriate theme from ButtonThemes
  ButtonBar buildButtonBar(List<Widget> buttons){
    return new ButtonBar(alignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: buttons);
  }
}