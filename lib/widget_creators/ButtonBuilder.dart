import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/styles/ButtonThemes.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonWidgets.dart';

class ButtonBuilder{
    ButtonThemes _buttonThemes = new ButtonThemes();
    ButtonWidgets _buttonWidgets = new ButtonWidgets();

    /// Create and return Widget containing one raised button
    ///   using the appropriate theme from ButtonThemes
    Widget buildRaisedButton(String text, Function function){
      return new ButtonWidgets().buildRaisedButton(text, function);
    }

    /// Create and return Widget containing raised buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildRaisedButtons(Map<String, Function> buttons){
      List<Widget> lstButtons = new List();
      buttons.forEach((key, value) =>
          lstButtons.add(buildRaisedButton(key, value)));
      return buildButton(lstButtons);
    }

    /// Helper function to create and return a column
    /// of buttons from a list of buttons
    Builder buildButton(List<Widget> lst){
      return Builder(
          builder: (context) => Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: ButtonTheme.fromButtonThemeData(
                      data: _buttonThemes.getButtonTheme().data,
                      child: new Column(children: lst,)
                  )
              )
          )
      );
    }

    /// Create and return Widget containing one flat button
    ///   using the appropriate theme from ButtonThemes
    Widget buildFlatButton(String text, Function function){
      return new ButtonWidgets().buildFlatButton(text, function);
    }

    /// Create and return Widget containing flat buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildFlatButtons(Map<String, Function> buttons){
      List<Widget> lstButtons = new List();
      buttons.forEach((key, value) =>
          lstButtons.add(buildFlatButton(key, value)));
      return buildButton(lstButtons);
    }

    /// Create and return Widget containing one Icon button
    ///   using the appropriate theme from ButtonThemes
    Widget buildIconButton(String text, Function function){
      return new ButtonWidgets().buildIconButton(text, function);
    }

    /// Create and return Widget containing icon buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildIconButtons(Map<String, Function> buttons){
      List<Widget> lstButtons = new List();
      buttons.forEach((key, value) =>
          lstButtons.add(buildIconButton(key, value)));
      return buildButton(lstButtons);
    }

}