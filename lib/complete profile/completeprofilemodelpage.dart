// ignore_for_file: prefer_const_constructors, avoid_print
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:nm24/profile/profilepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CompleteProfileModelPage extends ChangeNotifier {

  int _progressStep = 1;
  int get progressStep => _progressStep;
  incresestep() {
    if (progressStep < 7) {
      _progressStep++;
      notifyListeners();
    } else {
      Get.to(() => ProfilePage());
    }
  }

  resetstaps() {
    _progressStep = 1;
    notifyListeners();
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

  String? _selectgender;
  String? get selectgender => _selectgender;

  toggleselectgender(value) {
      getGender();
      print('Complete Profile Step $value');
  }

  // new function for get api call
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

  //new POST Api calling for upload profile image 22sep-->
  String? _profilePath;
  String? get profilePath => _profilePath;

  Future getImage(context, model) async {
    String _image;
    final picker = ImagePicker();

    var _pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 50, // <- Reduce Image quality
        maxHeight: 500,  // <- reduce the image size
        maxWidth: 500);
    _image = _pickedFile?.path as String;
    _upload(_image);
  }

  void _upload(String file) async {
    String fileName = file.split('/').last;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    FormData data = FormData.fromMap({
      "image": await MultipartFile.fromFile(
        file, filename: fileName,
      ),
    });
    Dio dio = Dio();
    var response =  await dio.post(baseUrl + "api/users/upload_profile?id=$userId", data: data);
    print(' uplode profile responseData $response');
    final responseData = json.decode(response.toString());

    try {
      if (responseData['statuscode'] == true) {
        _profilePath = file;
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _profilePath = "";
        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }

  //------------GET API FOR GENDER----- 22sep->
  String? _step ;
  String? get step => _step;

  String? _gender ;
  String? get gender => _gender;

  getGender() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '2';
    String? gender = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "gender": gender,
    };

    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' gender params response $params');

    final responseData = json.decode(response.toString());
    print('gender responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _gender = gender;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _gender = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }

  // get api for marital status->
  String? _martial_status;
  String? get martial_status => _martial_status;
  getMaritalStatus() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '3';
    String? martial_status = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "martial_status": martial_status,
    };

    Dio dio = Dio();
    print(' martial_status params response $params');
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);

    final responseData = json.decode(response.toString());
    print(' martial_status responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _martial_status = martial_status;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _martial_status = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


  // get api for work_type->
  String? _work_type;
  String? get work_type => _work_type;
  getWorkType() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '4';
    String? work_type = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "work_type": work_type,
    };
    Dio dio = Dio();

    print(' work_type params response $params');
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);

    final responseData = json.decode(response.toString());
    print('work_type responseData $response');

    try {
      if (responseData['statuscode'] == true) {
        _work_type = work_type;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _work_type = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


  // get api for children->
  String? _children;
  String? get children => _children;
  getChildren() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '5';
    String? children = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "children": children,
    };

    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' children params response $params');

    final responseData = json.decode(response.toString());
    print(' children responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _children = children;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _children = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


// get api for IsSmog 22sep->
  String? _is_smoke ;
  String? get is_smoke => _is_smoke;
  ///remaining ui
  getIsSmoke() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '6';
    String? is_smoke = '1';


    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "is_smoke": is_smoke,
    };

    Dio dio = Dio();

    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' is_smoke params response $params');

    final responseData = json.decode(response.toString());
    print('is_smog responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _is_smoke = is_smoke;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
         userId = "";
        _is_smoke = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


// get api for IsPet 22sep->
  String? _is_pet ;
  String? get is_pet => _is_pet;
  ///remaining ui
  getIsPet() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '7';
    String? is_pet = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "is_pet": is_pet,
    };

    Dio dio = Dio();
    print('is_pet params response $params');
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);

    final responseData = json.decode(response.toString());
    print('is_pet responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _is_pet = is_pet;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _is_pet = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


//get api for IsFamily 22sep->
  String? _is_family ;
  String? get is_family => _is_family;
  ///remaining ui
  getIsFamily() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '8';
    String? is_family = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "is_family": is_family,
    };

    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' is_family params response $params');

    final responseData = json.decode(response.toString());
    print('is_family responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _is_family = is_family;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _is_family = "";
         userId = "";
        _step = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


//get api for age 22sep->
  String? _age ;
  String? get age => _age;
  ///remaining ui
  getAge() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '9';
    String? age = '20-22';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "age": age,
    };

    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print('age params response $params');


    final responseData = json.decode(response.toString());
    print('age responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _age = age;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _age = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


// get api for Income 22sep->
  String? _income ;
  String? get income => _income;
  getIncome() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '10';
    String? income = '1';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "income": income,
    };


    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' income params response $params');


    final responseData = json.decode(response.toString());
    print('income responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _income = income;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
         userId = "";
        _income = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


// get api for language 22sep->
  String? _language ;
  String? get language => _language;
  ///remaining ui
  getLanguage() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '11';
    String? language = '[en,vi]';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
      "language": language,
    };


    Dio dio = Dio();
    var response = await dio.get(baseUrl + endpointCompeleteProfile, queryParameters: params);
    print(' language params response $params');

    final responseData = json.decode(response.toString());
    print('language responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        _language = language;
        _step = step;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _step = "";
        userId = "";
        _language = "";

        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


  //post  api for upload documents post api->
  String? _profilePathUD;
  String? get profilePathUD => _profilePathUD;
  postUploadDocument(String file) async {
    String fileName = file.split('/').last;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    FormData data = FormData.fromMap({
      "image": await MultipartFile.fromFile(
        file,
        filename: fileName,
      ),
    });
    Dio dio = Dio();
    var response =  await dio.post(baseUrl + "api/users/upload_document?id=$userId", data: data);
    print(' upload Document responseData $response');

    final responseData = json.decode(response.toString());

    try {
      if (responseData['statuscode'] == true) {
        _profilePathUD = file;
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _profilePathUD = "";
        notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }


// get api for currentCompleted 22sep->
  String? _profileStatus;
  String? get profileStatus => _profileStatus;
  /// remaining ui
  getCurrentCompleted() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = '12';

    Map<String, dynamic> params = {
      "step": step,
      "id": userId,
    };

    Dio dio = Dio();

    var response =  await dio.post(baseUrl + "api/users/profile_status?id=$userId", data: params);

    final responseData = json.decode(response.toString());
    print('completed step responseData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        //_profilePathUD = file;

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _profilePathUD = "";
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
