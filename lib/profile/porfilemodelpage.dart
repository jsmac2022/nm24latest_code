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

  // new code 21 sept

  bool _userIdExist = true;
  bool get userIdExist => _userIdExist;

  List _profileviewList = [];
  List get profileviewList => _profileviewList;

  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  toggleshemmerShow() {
    _isShimmer = true;
    notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    notifyListeners();
  }

}