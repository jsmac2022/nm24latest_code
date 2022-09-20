// ignore_for_file: avoid_print, prefer_final_fields
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:nm24/common/styles/apierroralertdiloge.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardModelPage extends ChangeNotifier {

  // bool _astro = false;
  // bool get astro => _astro;

  // usertypefind() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? usertype = prefs.getString('user_type');
  //   var usertypeconvertint = usertype?.substring(1, usertype.length - 1);
  //   print('vinay usertype $usertypeconvertint');
  //   if (usertypeconvertint == '2') {
     
  //     _astro = true;

  //     notifyListeners();
  //      print('vinayyyyyyyyyy astro $astro');
  //   }
    
  // }

  // bool _isGeustLoggedIn = false;
  // bool get isGeustLoggedIn => _isGeustLoggedIn;

  // getgeustLogin() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? geustuserid = prefs.getString('login_user_id');
  //   String? usertype = prefs.getString('user_type');
  //   var geustuseridint = geustuserid?.substring(1, geustuserid.length - 1);
  //   print('vinay  geustuseridint $geustuseridint');
  //   print('vinay usertype  $usertype');
  //   if (geustuseridint == '000') {
  //     _isGeustLoggedIn = true;
  //     _usertype = '1';
  //     notifyListeners();
  //   }
  //   print('vinay isGeustLoggedIn $isGeustLoggedIn');
  //   notifyListeners();
  // }

  // geustloginfalse() {
  //   _isGeustLoggedIn = false;
  //   notifyListeners();
  // }
  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  int _activeindex = 0;
  int get activeindex => _activeindex;

  valueset(index) {
    _activeindex = index;
    notifyListeners();
  }

  String? _usertype;
  String? get usertype => _usertype;

  toggleshemmerShow() {
    _isShimmer = true;
    notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    notifyListeners();
  }

  List _astrologerListdb = [];
  List get astrologerListdb => _astrologerListdb;

  Map _userdataMap = {};
  Map get userdataMap => _userdataMap;
  userdatareset() {
    _userdataMap = {};
    notifyListeners();
  }

  // dashboardAstrologerList(context) async {
  //   toggleshemmerShow();
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? usertype = prefs.getString('user_type');

  //   var usertypeconvertint = usertype?.substring(1, usertype.length - 1);

  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_type":
  //         '2', // yha 1=>bhejenge to user ki list show hogi 2 bhenge to axtro ki list show hogi hme oppssite show karana h to oppo kr de yhi     -----usertype-1=>yeuser h,2=>ye astro h but hme user login h to astro ki list show krani h astro login hua h to user ki list show krani h matlb oppositise show krana h
  //     "limit": '20',
  //     "offset": '0',
  //   });
  //   print('vinay astrolist perams ${formData.fields}');
  //   var response = await dio.post("http://tenspark.com/astrologer/api/astrologer_list", data: formData);

  //   // final responseData = json.decode(response.data);
  //   final responseData = json.decode(response.toString()); //map is not a subtype of string error aaye to ye then apply
  //   //  print('vinay response $responseData');
  //   try {
  //     if (responseData['status'] == "true") {
  //       // print('vinay1 ${responseData['status']}');
  //       // var iduser = responseData['astro_list'][0]['id'];
  //       _astrologerListdb = responseData['list'];
  //       _usertype = usertypeconvertint;
  //       print('all astro list $_astrologerListdb');
  //       toggleshemmerdismis();
  //       notifyListeners();
  //     } else {
  //       toggleshemmerdismis();
  //       print('Error: ${responseData["message"]}');
  //       var messages = responseData["message"];
  //       apiErrorAlertdialog(context, messages);
  //     }
  //   } catch (e) {
  //     toggleshemmerdismis();
  //     print('Error: ${e.toString()}');
  //   }
  // }

  // dashboardprofileview(context) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   // toggleshemmerShow();

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? userid = prefs.getString('login_user_id');

  //   var useridconvertint = userid?.substring(1, userid.length - 1);

  //   //shareprefrence se " "46" " ese aa rha tha ise convert se "46 kiya"

  //   var deviceToken = "deviceToken";
  //   if (Platform.isAndroid) {
  //     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     deviceToken = androidInfo.id;
  //   }

  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_id": useridconvertint,
  //     "device_id": deviceToken,
  //   });

  //   var response = await dio.post("http://tenspark.com/astrologer/api/view_users", data: formData);

  //   // final responseData = json.decode(response.data);
  //   final responseData = json.decode(response.toString());
  //   //map is not a subtype of string error aaye to ye then apply
  //   // print('vinayresponse $responseData');

  //   try {
  //     if (responseData['status'] == true) {
  //       _userdataMap = responseData["data"];
  //       print('user profie data $userdataMap');
  //       toggleshemmerdismis();
  //       notifyListeners();
  //     } else {
  //       toggleshemmerdismis();
  //       print('Error: ${responseData["message"]}');

  //       Get.offAll(() => LoginPage());

  //       // var messages = responseData["message"];
  //       // apiErrorAlertdialog(context, messages);
  //     }
  //   } catch (e) {
  //     toggleshemmerdismis();
  //     print('Error: ${e.toString()}');
  //   }
  // }

  final formKey = GlobalKey<FormState>();
  propertySearchWithLocation(context) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    Map<String, dynamic> rawData = {
      "offset":"0",
      "location":""
    };

    // print('property search with location params $rawData');
    var response = await dio.post(baseUrl + propertySearchWithLocationEndpoint, data: rawData);
    print('property search with location params $rawData');

    final responseData = json.decode(response.toString());
    print('property search with location responceData $responseData');

    try {
      if (responseData['status'] == true) {
        toggleshemmerdismis();
        await prefs.setString('userId', responseData['result'][0]['Customer']['id']['location'],);
        //Get.offAll(() => BottomNavBarPage());
        toggleshemmerdismis();
        // loginEmail.clear();
        // loginPassword.clear();
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
