

// ignore_for_file: avoid_print, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PoliceModelPage extends ChangeNotifier{


    DateTime? newdob;
  DateTime currentDate = DateTime.now();
  selectDate(context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context, initialDate: currentDate, firstDate: DateTime(1960), lastDate: currentDate) as DateTime;
    if (pickedDate != currentDate) print('aaa1 $currentDate');
    currentDate = pickedDate;
    newdob = pickedDate;
    notifyListeners();
  }

  String? onlydate;
  String? gettext() {
    if (newdob == null) {
      return 'Select Date';
    } else {
      onlydate = DateFormat('dd-MM-yyyy').format(currentDate);
      return onlydate;
      // return "${currentDate.day}/${currentDate.month}/${currentDate.year}";
    }
  }

  String? _chosensalution;
  String? get chosensalution => _chosensalution;

  List _salutionlist = ['Mr.', 'Miss'];
  List get salutionlist => _salutionlist;

  togglesalution(value) {
    _chosensalution = value;
    notifyListeners();
  }

  List _ocupationlist = ['IT Software', 'Doctor', 'Shop'];
  List get ocupationlist => _ocupationlist;

  String? _choseocupationlist;
  String? get choseocupationlist => _choseocupationlist;

  toggleoccupation(value) {
    _choseocupationlist = value;
    notifyListeners();
  }

  List _materialstatuslist = ['Single', 'Married', 'In Relationship '];
  List get materialstatuslist => _materialstatuslist;

  String? _chosematerialstatus;
  String? get chosematerialstatus => _chosematerialstatus;

  togglematerialstatus(value) {
    _chosematerialstatus = value;
    notifyListeners();
  }
  
  String? _chosengenderValue;
  String? get chosengenderValue => _chosengenderValue;

  List _genderList = ['Male', 'Female', 'Other'];
  List get genderList => _genderList;

  togglegender(valuegender) {
    _chosengenderValue = valuegender;
    notifyListeners();
  }

     bool _checkboxTC = false;
  bool get checkboxTC => _checkboxTC;

  
  toggleCheckboxTC() {
    _checkboxTC = !_checkboxTC;
    notifyListeners();
  }
}