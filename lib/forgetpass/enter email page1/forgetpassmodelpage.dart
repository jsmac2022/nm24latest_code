// ignore_for_file: avoid_print, prefer_final_fields
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/styles/apierroralertdiloge.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ForgetPassModelPage extends ChangeNotifier {

  TextEditingController forgetpassMobile = TextEditingController();
  bool _autovalidate = false;
  bool get autovalidate => _autovalidate;
  
  toggleautovalidate() {
    _autovalidate = !_autovalidate;
    notifyListeners();
  }

  String _verificationCode = '';
  String get verificationCode => _verificationCode;

  final TextEditingController fpassemail = TextEditingController();

  var _firebasetoken = '';
  get firebasetoken => _firebasetoken;

  /*  sandOtpfpass(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Future.delayed(const Duration(milliseconds: 300));
    await FirebaseMessaging.instance.getToken().then((value) {
      _firebasetoken = value!;
      notifyListeners();
    });
    Dio dio = Dio();

     Map<String, dynamic> rawData = {
      "email": fpassemail.text,
      "deviceToken": firebasetoken
    };
    // print('forget pass peram  $rawData');
    var response = await dio.post(baseUrl + forgetpassEndpoint, data: rawData);

    final responseData = json.decode(response.toString());
    print('forget pass responseData  $responseData');


    try {
      if (responseData['statuscode'] == true) {
        await prefs.remove('userId');
        await prefs.setString('userId', responseData['data'][0]['Customer']['id'],);
        print('userid ----> ${prefs.getString('userId')}');
        await Provider.of<TwillioModelPage>(context, listen: false)
            .otpsandtwilio('+91', responseData['data'][0]['Customer']['mobile'],
            'forgetpassword');

        notifyListeners();
        fpassemail.clear();
        notifyListeners();
      } else {
        apiErrorAlertdialog(context, 'Email Does Not Exist');
      }
    } catch (e) {
      print(e);
    }
  }*/

  String? _email ;
  String? get email => _email;
  //new code 27-09
  sandOtpfpass(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Future.delayed(const Duration(milliseconds: 300));
    await FirebaseMessaging.instance.getToken().then((value) {
      _firebasetoken = value!;
      notifyListeners();
    });
    Dio dio = Dio();

    var response =  await dio.get(baseUrl + "api/users/forgot_password?email=jeet27@gmail.com",);
    print('forget pass peram  $response');

    final responseData = json.decode(response.toString());
    print('forget pass responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        await prefs.remove('userId');
        await prefs.setString('userId', responseData['data'][0]['Customer']['id'],);
        print('userid ----> ${prefs.getString('userId')}');
        await Provider.of<TwillioModelPage>(context, listen: false)
            .otpsandtwilio('+91', responseData['data'][0]['Customer']['mobile'],
            'forgetpassword');

        notifyListeners();
        fpassemail.clear();
        notifyListeners();
      } else {
        apiErrorAlertdialog(context, 'Email Does Not Exist');
      }
    } catch (e) {
      print(e);
    }
  }

}
