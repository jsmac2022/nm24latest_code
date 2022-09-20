// ignore_for_file: prefer_final_fields, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InsuranceForModelPage extends ChangeNotifier {
  List _materialstatuslist = ['Single', 'Married', 'In Relationship '];
  List get materialstatuslist => _materialstatuslist;

  String? _chosematerialstatus;
  String? get chosematerialstatus => _chosematerialstatus;

  togglematerialstatus(value) {
    _chosematerialstatus = value;
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

  String? _chosengenderValue;
  String? get chosengenderValue => _chosengenderValue;

  List _genderList = ['Male', 'Female', 'Other'];
  List get genderList => _genderList;

  togglegender(valuegender) {
    _chosengenderValue = valuegender;
    notifyListeners();
  }

  String? _chosenrelationship;
  String? get chosenrelationship => _chosenrelationship;

  List _relationshipList = ['Son', 'Wife', 'Daughter'];
  List get relationshipList => _relationshipList;

  togglerelationship(valuegender) {
    _chosenrelationship = valuegender;
    notifyListeners();
  }

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

  String _radio1 = "No";
  String get radio1 => _radio1;

  List<String> _radiobtnLabellist = ["No", "Yes"];
  List get radiobtnLabellist => _radiobtnLabellist;

  String _radio2 = "No";
  String get radio2 => _radio2;


  String _radio3 = "No";
  String get radio3 => _radio3;


  String _radio4 = "No";
  String get radio4 => _radio4;


  String _radio5 = "No";
  String get radio5 => _radio5;


  String _radio6 = "No";
  String get radio6 => _radio6;


  String? toogleradiobtnvalue(index) {
    print('index $index');

    switch (index) {
      case 0:
        return radio1;

      case 1:
        return radio2;

      case 2:
        return radio3;

      case 3:
        return radio4;

      case 4:
        return radio5;

      case 5:
        return radio6;

      default:
    }
  }

  toogleradiobtn(index, value) {
    print('index $index');

    switch (index) {
      case 0:
        _radio1 = value;
        notifyListeners();
        break;

      case 1:
       _radio2 = value;
        notifyListeners();
        break;

      case 2:
         _radio3 = value;
        notifyListeners();
        break;

      case 3:
        _radio4 = value;
        notifyListeners();
        break;

      case 4:
         _radio5 = value;
        notifyListeners();
        break;

      case 5:
         _radio6 = value;
        notifyListeners();
        break;

      default:
    }
  }
}
