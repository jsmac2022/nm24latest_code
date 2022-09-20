// ignore_for_file: prefer_final_fields, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HealthModelPage extends ChangeNotifier{
   bool _checkboxvalue = false;
  bool get checkboxvalue => _checkboxvalue;

  
  toggleCheckbox() {
    _checkboxvalue = !_checkboxvalue;
    notifyListeners();
  }
   bool _checkboxTC = false;
  bool get checkboxTC => _checkboxTC;

  
  toggleCheckboxTC() {
    _checkboxTC = !_checkboxTC;
    notifyListeners();
  }
   bool _checkboxwhatscover = false;
  bool get checkboxwhatscover => _checkboxwhatscover;

  
  toggleCheckboxwhatscover() {
    _checkboxwhatscover = !_checkboxwhatscover;
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

  
  DateTime? newdob;
  DateTime currentDate = DateTime.now();
  selectDate(context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context, initialDate: currentDate, firstDate: DateTime(1960), lastDate:currentDate) as DateTime;
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

}