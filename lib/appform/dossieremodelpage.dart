// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:nm24/profile/profilepage.dart';

class DossierFormModelPage extends ChangeNotifier {
  int _progressStep = 1;
  int get progressStep => _progressStep;
  incresestep() {
    if (progressStep < 4) {
      _progressStep++;
      notifyListeners();
    } else {
      Get.to(() => ProfilePage());
    }
  }

  decresestep() {
    if (progressStep > 1) {
      print('vinat $progressStep');
      _progressStep--;
      notifyListeners();
    } else if (progressStep == 1) {
      Get.back();
    }
    print('vinat $progressStep');
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

  String? _selectgender;
  String? get selectgender => _selectgender;
  toggleselectgender(value) {
    print('vinay $value');
  }

  String _radio1 = "Single";
  String get radio1 => _radio1;

  List<String> _radiobtnLabellist = ["Single", "Married", "In a relationship", "Devorced", "Widowed"];
  List get radiobtnLabellist => _radiobtnLabellist;

  toogleradiobtn(value) {
    _radio1 = value;
    notifyListeners();
  }

  String _radio2 = "Single";
  String get radio2 => _radio2;

  List<String> _radiobtnLabellist2 = ["I am applying alone", "I apply together with another lorem"];
  List get radiobtnLabellist2 => _radiobtnLabellist2;

  toogleradiobtn2(value) {
    _radio2 = value;
    notifyListeners();
  }
  String _radiop2 = "Employee";
  String get radiop2 => _radiop2;

  List<String> _radiobtnLabellistp2 = ["Employee", "Temporary employee","Self-employee","Student","Housewife/househasband","Pensioner","Job Seeker"];
  List get radiobtnLabellistp2 => _radiobtnLabellistp2;

  toogleradiobtnp2(value) {
    _radiop2 = value;
    notifyListeners();
  }
  String _radio2p2 = "No";
  String get radio2p2 => _radio2p2;

  List<String> _radiobtnLabellistp22 = ["No", "Yes"];
  List get radiobtnLabellistp22 => _radiobtnLabellistp22;

  toogleradiobtnp22(value) {
    _radio2p2 = value;
    notifyListeners();
  }

  List _sallerylist = ['90,000-100,000', '100,000-150,000', '150,000-200,000'];
  List get sallerylist => _sallerylist;

   String? _chosesallery;
  String? get chosesallery => _chosesallery;

  
  togglesallery(value) {
    _chosesallery = value;
    notifyListeners();
  }

    bool _checkboxpage2 = false;
  bool get checkboxpage2 => _checkboxpage2;

  
  toggleCheckbox() {
    _checkboxpage2 = !_checkboxpage2;
    notifyListeners();
  }

//--------- page3 ---------
String _radiop3 = "Main residance";
  String get radiop3 => _radiop3;

  List<String> _radiobtnLabellistp3= ["Main residance", "Second home"];
  List get radiobtnLabellistp3 => _radiobtnLabellistp3;

  toogleradiobtnp3(value) {
    _radiop3 = value;
    notifyListeners();
  }

  
  DateTime? newdobp3;
  DateTime currentDatep3 = DateTime.now();
  selectDatep3(context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context, initialDate: currentDatep3, firstDate: DateTime(1960), lastDate: currentDatep3) as DateTime;
    if (pickedDate != currentDatep3) print('aaa1 $currentDatep3');
    currentDatep3 = pickedDate;
    newdobp3 = pickedDate;
    notifyListeners();
  }

  String? onlydatep3;
  String? gettextp3() {
    if (newdobp3 == null) {
      return 'Select Date';
    } else {
      onlydatep3 = DateFormat('dd-MM-yyyy').format(currentDatep3);
      return onlydatep3;
      // return "${currentDate.day}/${currentDate.month}/${currentDate.year}";
    }
  }

  
  String _radio1p3 = "No";
  String get radio1p3 => _radio1p3;

  List<String> _radiobtnLabellistp33 = ["No", "Yes"];
  List get radiobtnLabellistp33 => _radiobtnLabellistp33;

  String _radio2p3 = "No";
  String get radio2p3 => _radio2p3;


  String _radio3p3 = "No";
  String get radio3p3 => _radio3p3;


  String _radio4p3 = "No";
  String get radio4p3 => _radio4p3;

  String? toogleradiobtnvaluep3(index) {
    print('index $index');

    switch (index) {
      case 0:
        return radio1p3;

      case 1:
        return radio2p3;

      case 2:
        return radio3p3;

      case 3:
        return radio4p3;


      default:
    }
  }

   toogleradiobtnp33(index, value) {
    print('index $index');

    switch (index) {
      case 0:
        _radio1p3 = value;
        notifyListeners();
        break;

      case 1:
       _radio2p3 = value;
        notifyListeners();
        break;

      case 2:
         _radio3p3 = value;
        notifyListeners();
        break;

      case 3:
        _radio4p3 = value;
        notifyListeners();
        break;


      default:
    }
  }

List<String> _questionsp3 = ['Do you play musical instruments?', 'Do you have pets?','Are you in an tenacy?','Who has quit or who will quit'];
  List get questionsp3 => _questionsp3;

  String _radioC1p3 = "No";
  String get radioC1p3 => _radioC1p3;

  List<String> _radiobtnLabellistCp33 = ["No", "Yes"];
  List get radiobtnLabellistCp33 => _radiobtnLabellistCp33;

  String _radioC2p3 = "No";
  String get radiCo2p3 => _radioC2p3;


  String _radioC3p3 = "No";
  String get radioC3p3 => _radioC3p3;




  String? toogleradiobtnvalueCp3(index) {
    print('index $index');

    switch (index) {
      case 0:
        return radioC1p3;

      case 1:
        return radiCo2p3;

      case 2:
        return radioC3p3;

    


      default:
    }
  }

   toogleradiobtnpCp3(index, value) {
    print('index $index');

    switch (index) {
      case 0:
        _radioC1p3 = value;
        notifyListeners();
        break;

      case 1:
       _radioC2p3 = value;
        notifyListeners();
        break;

      case 2:
         _radioC3p3 = value;
        notifyListeners();
        break;

        default:
    }
  }

List<String> _questionsCp3 = ['Do you Need parking?', 'Do you have liability insurance?','Do you smoke Inside the building?'];
  List get questionsCp3 => _questionsCp3;

}
