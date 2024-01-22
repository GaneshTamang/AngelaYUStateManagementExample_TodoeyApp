import 'package:flutter/material.dart';

class TasksData with ChangeNotifier {
  String _title = 'This is current homepage title';
  String _textEditing = 'intial string  with no change';
  bool _currentlychanged = false;
  String get getTitle {
    return _title;
  }

  String get textEditingControllerValue {
    return _textEditing;
  }

  bool get currentTF {
    return _currentlychanged;
  }

  setTExt(String incomingString) {
    _textEditing = incomingString;
    notifyListeners();
  }

  setNewTitle() {
    if (_currentlychanged == false) {
      _title = 'This is current homepage title';
    } else {
      _title = 'newtitle';
    }
    notifyListeners();
  }

  changeCurrentValue() {
    _currentlychanged = !_currentlychanged;
    setNewTitle();
    notifyListeners();
  }
}
