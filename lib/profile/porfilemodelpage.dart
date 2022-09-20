
// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

class ProfileModelPage extends ChangeNotifier{

  
  List _languagelist = ['English', 'Hindi', 'Spanish'];
  List get languagelist => _languagelist;

   String? _choselanguage;
  String? get choselanguage => _choselanguage;

  
  togglelanguage(value) {
    _choselanguage = value;
    notifyListeners();
  }
}