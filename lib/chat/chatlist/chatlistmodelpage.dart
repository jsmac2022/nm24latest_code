// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

class Chatlistmodelpage extends ChangeNotifier {
  TextEditingController typingmessage = TextEditingController();
  ScrollController scrollController =  ScrollController();

  typingreset() {
    typingmessage.clear();
    notifyListeners();
  }

  bool _noChatFound = true;
  bool get noChatFound => _noChatFound;

  String? _reseverid;
  String? get reseverid => _reseverid;

  String? _reseverName;
  String? get reseverName => _reseverName;

  String? _reseverFtoken;
  String? get reseverFtoken => _reseverFtoken;

  String? _ourSanderid;
  String? get ourSanderid => _ourSanderid;

  toggelreseverid(reseveridValue) {
    _reseverid = reseveridValue;
    notifyListeners();
  }

  toggelresevername(reseverNameValue) {
    _reseverName = reseverNameValue;
    notifyListeners();
  }

  toggelreseverdiveiceid(reseverdeviceid) {
    _reseverFtoken = reseverdeviceid;
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

  List? _chatconversiondata;
  List? get chatconversiondata => _chatconversiondata;

  // conversionlist() async {
  //   toggleshemmerShow();
  //   await Future.delayed(Duration(milliseconds: 300));

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? userid = prefs.getString('login_user_id');

  //   var useridconvertint = userid?.substring(1, userid.length - 1);

  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_id": useridconvertint,
  //     "sender_id": useridconvertint,
  //     "receiver_id": reseverid,
  //   });

  //   print('formdata ${formData.fields}');

  //   var response = await dio.post("http://tenspark.com/astrologer/api/view_call_chat", data: formData);

  //   final responseData = json.decode(response.toString());

  //   try {
  //     if (responseData['status'] == "true") {
  //       _chatconversiondata = responseData["data"];
  //       // _reseverFtoken = chatconversiondata!.last['device_id'];
  //       _ourSanderid = useridconvertint;
  //       _noChatFound = false;

  //       notifyListeners();
  //       print('full chat list $chatconversiondata');
  //       print('full chat list $_reseverFtoken');

  //       toggleshemmerdismis();
  //       notifyListeners();
  //       scrollController.jumpTo(scrollController.position.maxScrollExtent);
  //     } else {
  //       _noChatFound = true;
  //       notifyListeners();
  //       toggleshemmerdismis();
  //       print('Error: ${responseData["message"]}');
  //     }
  //   } catch (e) {
  //     toggleshemmerdismis();
  //     print('Error: ${e.toString()}');
  //   }
  // }

  // conversiontypingsubmit(context) async {
    
  //   toggleshemmerShow();
  //   chatUserList(context);

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? userid = prefs.getString('login_user_id');

   
  //   var useridconvertint = userid?.substring(1, userid.length - 1);
  //   print('userid $useridconvertint');
  //   if (useridconvertint == '000') {}
  //   print('reseverFtoken $reseverFtoken');

  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_id": useridconvertint,
  //     "sender_id": useridconvertint,
  //     "receiver_id": reseverid,
  //     "message": typingmessage.text,
  //     "device_id": reseverFtoken,
  //   });
  //   print('peram ${formData.fields}');
  //   var response = await dio.post("http://tenspark.com/astrologer/api/add_call_chat", data: formData);

  //   // final responseData = json.decode(response.data);
  //   final responseData = json.decode(response.toString());

  //   try {
  //     if (responseData['status'] == "true") {
  //       toggleshemmerdismis();
  //       FocusScope.of(context).unfocus();

  //       conversionlist();
  //       typingmessage.clear();
  //       notifyListeners();
  //     } else {
  //       toggleshemmerdismis();
  //       print('Error: ${responseData["message"]}');
  //     }
  //   } catch (e) {
  //     toggleshemmerdismis();
  //     print('Error: ${e.toString()}');
  //   }
  // }

  List _astrologerListdb = [];
  List get astrologerListdb => _astrologerListdb;

  // chatUserList(context) async {
  //   toggleshemmerShow();
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? usertype = prefs.getString('user_type');

  //   var usertypeconvertint = usertype?.substring(1, usertype.length - 1);

  //   Dio dio = new Dio();
  //   FormData formData = new FormData.fromMap({
  //     "user_type": usertypeconvertint == '2'
  //         ? '1'
  //         : '2', // yha 1=>bhejenge to user ki list show hogi 2 bhenge to axtro ki list show hogi hme oppssite show karana h to oppo kr de yhi     -----usertype-1=>yeuser h,2=>ye astro h but hme user login h to astro ki list show krani h astro login hua h to user ki list show krani h matlb oppositise show krana h
  //     "limit": '20',
  //     "offset": '0',
  //   });
  //   print('vinay astrolist perams ${formData.fields}');
  //   var response = await dio.post("http://tenspark.com/astrologer/api/astrologer_list", data: formData);

  //   // final responseData = json.decode(response.data);
  //   final responseData = json.decode(response.toString()); //map is not a subtype of string error aaye to ye then apply
  //   // print('vinaylist1 $responseData');

  //   try {
  //     if (responseData['status'] == "true") {
  //       // print('vinay1 ${responseData['status']}');
  //       // var iduser = responseData['astro_list'][0]['id'];
  //       _astrologerListdb = responseData['list'];
  //       //  _usertype = usertypeconvertint;
  //       print('all astro list user ${_astrologerListdb[1]}');
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
}
