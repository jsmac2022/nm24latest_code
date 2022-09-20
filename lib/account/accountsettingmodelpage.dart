// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class AccountsettingModelPage extends ChangeNotifier {
  bool _switchVal = false;
  bool get switchVal => _switchVal;

  toggleSwitchbtn() {
    _switchVal = !_switchVal;
    notifyListeners();
    print('vinay $switchVal');
  }
}
