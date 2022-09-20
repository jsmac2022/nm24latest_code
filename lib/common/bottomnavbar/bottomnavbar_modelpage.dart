// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:nm24/PropertyListing/createlisting1/createlisting1page.dart';
import 'package:nm24/chat/chatlist/chatinglistpage.dart';
import 'package:nm24/dashboard/dashboard_page.dart';
import 'package:nm24/profile/profilepage.dart';
import 'package:nm24/service/servicepage.dart';

class BottomnavbarModelPage extends ChangeNotifier {
  int _bottombarzindex = 0;
  int get bottombarzindex => _bottombarzindex;

 

  final List _bottombarScreens = [DashboardPage(), ListingPage1(), ChatingListPage(), ServicePage(), ProfilePage()];

  List get bottombarScreens => _bottombarScreens;

  toggle(context, index) async {
    print('vinay $index');
    print('vinay ${index.runtimeType}');
    if (index == 10) {
      // var dbcontroller = Provider.of<DashboardModelPage>(context, listen: false);
      // if (dbcontroller.isGeustLoggedIn) {
      //   await geustloginfirst(context);
      // } else {
      //   _bottombarzindex = index;
      //   notifyListeners();
      // }
    } else {
      _bottombarzindex = index;
      notifyListeners();
    }
  }

  togglebottomindexreset() {
    _bottombarzindex = 0;
    notifyListeners();
    
  }
}
