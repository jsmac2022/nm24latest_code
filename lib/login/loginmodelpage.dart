import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/commonwidgets/toast.dart';
import 'package:nm24/common/styles/apierroralertdiloge.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginModelPage extends ChangeNotifier {
  int _initialtab = 0;
  int get initialtab => _initialtab;

  String? _tokan;
  String? get tokan => _tokan;

  bool _autovalidate = false;
  bool get autovalidate => _autovalidate;

  bool _isTapVissible = false;
  bool get isTapVissible => _isTapVissible;

  bool _obscuretext = true;
  bool get obscuretext => _obscuretext;

  late TabController tabController;
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();

  toggle() {
    _obscuretext = !_obscuretext;
    _isTapVissible = !_isTapVissible;
    notifyListeners();
  }

  toggleautovalidate() {
    _autovalidate = !_autovalidate;
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

  var _firebaseToken;
  get firebaseToken => _firebaseToken;

  signInsubmit(context) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await FirebaseMessaging.instance.getToken().then((value) {
      _firebaseToken = value;
      notifyListeners();
    });

    Dio dio = Dio();

    Map<String, dynamic> rawData = {
      "email": loginEmail.text,
      "password": loginPassword.text,
      "deviceToken": firebaseToken
    };

    print('login peram $rawData');
    var response = await dio.post(baseUrl + loginEndpoint, data: rawData);

    final responseData = json.decode(response.toString());
    print('login responceData $responseData');

    //   toggleshemmerShow();

    try {
      if (responseData['statuscode'] == true) {
        toggleshemmerdismis();

        await prefs.setString('userId', "${responseData['data'][0]['id']}",);
        await prefs.setString('headerToken', responseData['token'],);
        await prefs.setString('firebaseToken', firebaseToken,);
        await prefs.setBool("isLoggedIn", true);

        // prefs.setBool("isLoggedIn", true);

        Get.offAll(() => BottomNavBarPage());
        showFlutterToast('Login Successful');
        toggleshemmerdismis();
        loginEmail.clear();
        loginPassword.clear();
        notifyListeners();
      }
      else if (responseData['status'] == "Inactive") {
        toggleshemmerdismis();
        await prefs.setString('userId', responseData['UserId'],);
        //await prefs.setString('userId', "${responseData['data'][0]['id']}");
        // _userId = responseData['UserId'];
        notifyListeners();

       await Provider.of<TwillioModelPage>(context, listen: false)
        .otpsandtwilio('+91', responseData['phone'],'inactivelogin'); //Mobile = phone
        showFlutterToast('Please verifiy otp');

        Future.delayed(const Duration(milliseconds: 200));
        await sandOtpInactive(context);
      } else {
        toggleshemmerdismis();
        print('Error: ${responseData["message"]}');
        apiErrorAlertdialog(context, responseData["message"]);
        // apiErrorAlertdialog(context, 'UserName or Password Wrong');
      }
    } catch (e) {
      toggleshemmerdismis();
      print('Error: ${e.toString()}');
    }
  }

  sandOtpInactive(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    Map<String, dynamic> rawData = {
      "userId": prefs.getString('userId'),
      "deviceToken": firebaseToken
    };
    print('otp verify perams $rawData');

    var response = await dio.post(baseUrl + endpointResendOtp, data: rawData);
    final responseData = json.decode(response.toString());
    print('jjjjjjjjjjj $responseData');

    try {
      if (responseData['status'] == true) {
      } else {
        print(responseData['message']);
      }
    } catch (e) {
      print(e);
    }
  }

}
