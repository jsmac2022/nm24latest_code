import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/commonwidgets/toast.dart';
import 'package:nm24/forgetpass/verify%20otp%20page2/otpverifymodelpage.dart';
import 'package:nm24/login/loginpage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:nm24/common/styles/apierroralertdiloge.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class SignUpModelpage extends ChangeNotifier {

  final GlobalKey<FormState> formkeySignup = GlobalKey<FormState>();
  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  var _firebasetoken = '';
  get firebasetoken => _firebasetoken;

  String _loginType = 'MANUAL';
  String get loginType => _loginType;

  bool _autovalidate = false;
  bool get autovalidate => _autovalidate;

  bool _checkboxvalue = false;
  bool get checkboxvalue => _checkboxvalue;

  bool _obscuretext = true;
  bool get obscuretext => _obscuretext;

//obsuretext icon color change
  bool _isTapVissible = false;
  bool get isTapVissible => _isTapVissible;

  toggleshemmerShow() {
    _isShimmer = true;
    notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    notifyListeners();
  }

  toggleCheckbox() {
    _checkboxvalue = !_checkboxvalue;
    notifyListeners();
  }

  toggle() {
    _obscuretext = !_obscuretext;
    _isTapVissible = !_isTapVissible;
    notifyListeners();
  }

  toggleautovalidate() {
    _autovalidate = !_autovalidate;
    notifyListeners();
  }

  late TabController tabController;
  final GlobalKey<FormState> formKeysignup = GlobalKey<FormState>();
  TextEditingController signupname = TextEditingController();
  TextEditingController signupemail = TextEditingController();
  TextEditingController signupMobile = TextEditingController();
  TextEditingController signupPassword = TextEditingController();

  ///new code for singup page api call 6 sept-> by jitendra
  var responseDataN = { "id": 0 }; //created new line code 20sep

  signupsubmit(context) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await FirebaseMessaging.instance.getToken().then((value) {
      _firebasetoken = value!;
      notifyListeners();
    });
    _loginType = 'MANUAL';
    notifyListeners();
    Dio dio = Dio();

    Map<String, dynamic> rawData = {
      "email": signupemail.text,
      "password": signupPassword.text,
      "username": signupname.text,
      "phone": signupMobile.text,
    };

    print('firebasetoken $firebasetoken');
    var response = await dio.post(baseUrl + signupEndpoint, data: rawData);

    final responseData = json.decode(response.toString());
    print('signup responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        toggleshemmerdismis();

        await prefs.setString('userId', "$responseDataN");   //created new line code 20sep
        //await prefs.setString('userId', "${responseData['data']['id']}",);

      /*  await Provider.of<TwillioModelPage>(context, listen: false)
            .otpsandtwilio('+91', signupMobile.text, 'signup with otp');
        notifyListeners();*/

        Get.offAll(() => const LoginPage());
        showFlutterToast('SignUp Successful');
        toggleshemmerdismis();
        signupemail.clear();
        signupPassword.clear();
        signupname.clear();
        signupMobile.clear();
        notifyListeners();
      } else {
        toggleshemmerdismis();
        apiErrorAlertdialog(context, responseData["message"]);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('Error: ${e.toString()}');
    }
  }

}
