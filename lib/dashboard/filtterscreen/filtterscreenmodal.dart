// ignore_for_file: prefer_final_fields, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CounterModel {
  int counter;
  String countername;
  CounterModel({
    required this.counter,
    required this.countername,
  });
}

class FiltterModelPage extends ChangeNotifier {
  List<CounterModel> counterlist = [
    CounterModel(counter: 0, countername: 'Bedrooms'),
    CounterModel(counter: 0, countername: 'Bathrooms'),
    CounterModel(counter: 0, countername: 'Beds'),
  ];

  int _bedroomValue = 0;
  int get bedroomValue => _bedroomValue;

  int _bathroomValue = 0;
  int get bathroomValue => _bathroomValue;

  int _bedsValue = 0;
  int get bedsValue => _bedsValue;

  toggleinccounter(index) {
    counterlist[index].counter++;
    _bedroomValue = counterlist[0].counter;
    _bathroomValue = counterlist[1].counter;
    _bedsValue = counterlist[2].counter;
    notifyListeners();
    print('vinay bedrom $bedroomValue');
    print('vinay bedrom $bathroomValue');
    print('vinay bedrom $bedsValue');
  }

  toggledeccounter(index) {
    print('llllllll ${counterlist[index].counter}');
    if (counterlist[index].counter > 0) {
      counterlist[index].counter--;
      notifyListeners();
    }
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

  String? _selectpropertytype;
  String? get selectpropertytype => _selectpropertytype;
  togglepropertytype(value) {
    _selectpropertytype = value;
    print('vinay $selectpropertytype');
  }

  String? _selectpropertypricerange;
  String? get selectpropertypricerange => _selectpropertypricerange;
  toggleselectpropertypricerange(value) {
    _selectpropertypricerange = value;
    notifyListeners();
    print('vinay $selectpropertypricerange');
  }
}
