// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassModelPage extends ChangeNotifier {

bool _isTapVissible1 = false;
  bool get isTapVissible1 => _isTapVissible1;

  bool _isTapVissible2 = false;
  bool get isTapVissible2 => _isTapVissible2;


  bool _obscuretext1 = true;
  bool get obscuretext1 => _obscuretext1;

  bool _obscuretext2 = true;
  bool get obscuretext2 => _obscuretext2;

final formKey = GlobalKey<FormState>();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

 bool _autovalidate = false;
  bool get autovalidate => _autovalidate;
  
  toggleautovalidate() {
    _autovalidate = !_autovalidate;
    notifyListeners();
  }

  toggle1() {
     _isTapVissible1 = !_isTapVissible1;
    _obscuretext1 = !_obscuretext1;
    notifyListeners();
  }

  toggle2() {
     _isTapVissible2 = !_isTapVissible2;
    _obscuretext2 = !_obscuretext2;
    notifyListeners();
  }

  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  toggleshemmerShow() {
    _isShimmer = true;
    notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    notifyListeners();
  }

  // changepasswordsubmit(context, userid) async {
  //   toggleshemmerShow();
  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_id": userid,
  //     "password": newPassword.text,
  //   });
  //   print('vinay99 $userid');
  //   print('vinay1 ${newPassword.text}');
  //   var response = await dio.post(
  //       "https://tenspark.com/astrologer/api/reset_password",
  //       data: formData);

  //   final responseData = json.decode(response.data);
  //   print('vinay1 $responseData');
    

  //   try {
  //     if (responseData['status'] == "True") {
  //       print('vinay1 ${responseData['status']}');
  //       SharedPreferences prefs = await SharedPreferences.getInstance();
  //       prefs.setString(
  //         'login_user_id',
  //         json.encode(
  //           responseData['user_id'],
  //         ),
  //       );
  //       prefs.setBool("isLoggedIn", true);
  //      toggleshemmerShow();
  //      Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => LoginPage()));

  //   toggleshemmerdismis();
  //       print('Error: ${responseData['status']}');
  //       newPassword.clear();
  //       confirmPassword.clear();
  //       notifyListeners();
  //     } else {
  //       print('Error: ${responseData["message"]}');
  //       toggleshemmerShow();
  //       var messages = responseData["message"];
  //       apiErrorAlertdialog(context, messages);
  //       toggleshemmerdismis();
  //     }
  //   } catch (e) {
  //     print('Error: ${e.toString()}');
  //   }
  // }
}
