// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// class Constants {
//   static showToast(String toast) {
//     return Fluttertoast.showToast(
//       msg: toast,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//
//       timeInSecForIosWeb: 1,
//       backgroundColor: Color(0xff21335A),
//       textColor: Colors.white,
//     );
//   }
// }


showFlutterToast(String toast) {
  return Fluttertoast.showToast(
    msg: toast,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,

    timeInSecForIosWeb: 1,
    backgroundColor: Color(0xff21335A),
    textColor: Colors.white,
  );
}
