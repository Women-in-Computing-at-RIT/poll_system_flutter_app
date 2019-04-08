import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/styles/InputThemes.dart';
import 'package:tuple/tuple.dart';

class InputWidgets{
  InputThemes _inputThemes = new InputThemes();

  /// Build a text input with the given placeholder string
  TextFormField buildTextInput(String title, bool isPassword){
    TextFormField textInput = new TextFormField(
        obscureText: isPassword,
        decoration: new InputDecoration(
            labelText: title
        )
    );

    return textInput;
  }

  /// Build a checkbox with the given text
  CheckboxListTile buildCheckboxInput(Tuple2<String, bool> checkbox){
    bool isChecked = checkbox.item2;
    return new CheckboxListTile(
          value: isChecked,
          onChanged: (value) {
            //TODO?
          },
          title: Text(checkbox.item1),
          controlAffinity: ListTileControlAffinity.leading,
        );
  }

  /// Build a list of checkboxes with the given list of options
  Widget buildListOfCheckboxes(List<Tuple2<String, bool>> options){
    var temp = <Widget>[];
    options.forEach((value){
        temp.add(buildCheckboxInput(value));
    });

    return new Column(
      children: temp,
    );
  }

  /// Build a radio button with the given text
  RadioListTile buildRadioButton (Tuple2<String, bool> radio){
    return new RadioListTile(
        value: radio.item1,
        groupValue: null,
        onChanged: null,
        title: Text(radio.item1),
    );
  }

  /// Build a list of radio buttons with the list of options
  Widget buildListOfRadios(List<Tuple2<String, bool>> options){
    var temp = <Widget>[];
    options.forEach((value){
      temp.add(buildRadioButton(value));
    });

    return new Column(
      children: temp,
    );
  }
}