import 'package:flutter/cupertino.dart';
import 'package:poll_system_flutter_app/styles/ButtonThemes.dart';
import 'package:poll_system_flutter_app/widget_creators/ButtonWidgets.dart';

class ButtonBuilder{
    ButtonThemes _buttonThemes = new ButtonThemes();
    ButtonWidgets _buttonWidgets = new ButtonWidgets();

    /// Create and return Widget containing one raised button
    ///   using the appropriate theme from ButtonThemes
    Widget buildRaisedButton(String text, Function function){
      //TODO
      return null;
    }

    /// Create and return Widget containing raised buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildRaisedButtons(Map<String, Function> buttons){
      //TODO
      return null;
    }

    /// Create and return Widget containing one flat button
    ///   using the appropriate theme from ButtonThemes
    Widget buildFlatButton(String text, Function function){
      //TODO
      return null;
    }

    /// Create and return Widget containing flat buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildFlatButtons(Map<String, Function> buttons){
      //TODO
      return null;
    }

    /// Create and return Widget containing icon buttons
    ///   created using the given map text and functions
    ///   with the appropriate theme from ButtonThemes
    Widget buildIconButtons(Map<String, Function> buttons){
      //TODO
      return null;
    }

}