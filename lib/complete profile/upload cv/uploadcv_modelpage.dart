import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UploadCVModelPage extends ChangeNotifier{
  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  // String? _cvName;
  // String? get cvName => _cvName;
  //
  // String? _cvEmail;
  // String? get cvEmail => _cvEmail;
  //
  // String? _cvMobile;
  // String? get cvMobile => _cvMobile;
  //
  // String? _cvTotalProperty;
  // String? get cvTotalProperty => _cvTotalProperty;

  final GlobalKey<FormState> formKeysignup = GlobalKey<FormState>();
  TextEditingController cvName = TextEditingController();
 // TextEditingController cvEmail = TextEditingController();
//  TextEditingController cvMobile = TextEditingController();
 // TextEditingController cvTotalProperty = TextEditingController();
 // TextEditingController mygender = TextEditingController();
 // TextEditingController myMarritalStatus = TextEditingController();
 // TextEditingController Workas = TextEditingController();

  toggleshemmerShow() {
    _isShimmer = true;
    notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    notifyListeners();
  }

  final GlobalKey<FormState> formKeyCV = GlobalKey<FormState>();
  //------------GET API FOR GENDER----- 22sep->
  String? _step ;
  String? get step => _step;

  getCV() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    print('userId---- $userId');


    Map<String, dynamic> params = {
      "id": userId,
      "username": cvName,
    };

    Dio dio = Dio();
    var response = await dio.get(baseUrl + "api/users/profile?id=$userId,", queryParameters: params);
    print(' get cv profile response $response');

    final responseData = json.decode(response.toString());
    print('cv profile responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        toggleshemmerdismis();
        await prefs.setString('userId', "$responseData");

        notifyListeners();
        toggleshemmerdismis();
      } else {
        userId = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }

}

