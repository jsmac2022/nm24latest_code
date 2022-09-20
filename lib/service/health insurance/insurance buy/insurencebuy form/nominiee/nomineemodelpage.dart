// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NomineeModelPage extends ChangeNotifier{


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
}