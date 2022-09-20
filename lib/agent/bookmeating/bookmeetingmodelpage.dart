// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookmeetingModelPage extends ChangeNotifier {
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

  TimeOfDay selectedTime = TimeOfDay.now();
  selectTime(context) async {
    TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != selectedTime) {
      selectedTime = timeOfDay!;
      newTime = timeOfDay;
      notifyListeners();
    }
  }

  TimeOfDay? newTime;
  String? onlytime; //TimeOfDay(15:30) remove timeof day
  String? gettimetext() {
    if (newTime == null) {
      return 'Select Time';
    } else {
      final hours = selectedTime.hour.toString().padLeft(2, '0');
      final minutes = selectedTime.minute.toString().padLeft(2, '0');
      // return DateFormat('dd-MM-yyyy').format(currentDate);
      onlytime = "$hours:$minutes";
      return onlytime;
    }
  }
}
