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
    getGender(gender,step);
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


  //new api calling for upload profile image 22sep-->
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
        file,
        filename: fileName,
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



// api for get gender 22sep->
  String? _gender ;
  String? get gender => _gender;

  String? _step ;
  String? get step => _step;

  getGender(String? step,String? gender) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    String? step = prefs.getString('step');
    String? gender = prefs.getString('gender');

    // Map<String, dynamic> params = {
    //   "step": 'step',
    //   "id": 'userId',
    //   "gender": 'gender',
    // };

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?id="
        +prefs.getString('$userId')!+"&step="+step! + "&gender="+gender!);
    print(' gender responseData $response');

    // var response = await dio.get(baseUrl + "api/users/compelete_profile?step=$step"
    //     + '&' + "id=$userId"
    //     + '&' + "gender=$gender",
    // );

    // var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
    //     + '&' + "id=$userId"
    //     + '&' + "gender=${prefs.getString("$gender")}",
    // );

    final responseData = json.decode(response.toString());
    print('upload gender responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {

        _step = await responseData["$step"];
        userId = await responseData["$userId"];
        _gender = await responseData["$gender"];

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _gender = "";
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


  // get api for my marital status->
  String? _marital_status;
  String? get marital_status => _marital_status;
  getMaritalStatus() async {
    // print('get genderId $genderId');
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    var response = await dio.get(baseUrl + '/api/users/upload_profile?'
        'step=${prefs.getString('step')},' +
        'id=${prefs.getString('userid')},' +
        'marital_status=${prefs.getString('marital_status')}',
    );

    print(' marital response $response');
    final responseData = json.decode(response.toString());
    // print('vanderShopList responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {

       // _marital_status = responseData['data'];
        _marital_status = await responseData["$marital_status"];

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _marital_status = responseData['data'];
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
  String? _workType;
  String? get workType => _workType;
  getWorkType() async {
    // print('get genderId $genderId');
    toggleshemmerShow();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    var response = await dio.get(baseUrl + '/api/users/upload_profile?'
        'step=${prefs.getString('step')},' +
        'id=${prefs.getString('userid')},' +
        'workType=${prefs.getString('workType')}' ,

      options: Options(
        headers: {},
        //headers: {"authorization": prefs.getString('headerToken')},
      ),
    );
    print(' work type response $response');
    final responseData = json.decode(response.toString());
    // print('vanderShopList responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        // await prefs.getString('userId', responseData['id'],);
        //await prefs.getString('step', responseData['step'],);
        //await prefs.getString('work_type', responseData['work_type'],),

        _workType = responseData['data'];
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _workType = responseData['data'];
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
    // print('get genderId $genderId');
    toggleshemmerShow();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    var response = await dio.get(baseUrl + '/api/users/upload_profile?'
        'step=${prefs.getString('step')},' +
        'id=${prefs.getString('userid')},' +
        'children=${prefs.getString('children')}' ,

    );
    print(' children response $response');
    final responseData = json.decode(response.toString());

    try {
      if (responseData['statuscode'] == true) {
        _children = responseData['data'];
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _children = responseData['data'];
        notifyListeners();

        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }



// api for get gender 22sep->
  String? _is_smoke ;
  String? get is_smoke => _is_smoke;


  getIsSmog(String? step,String? is_smoke) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "is_smoke=${prefs.getString("$is_smoke")}",
    );

    final responseData = json.decode(response.toString());
    print('upload is_smog responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("is_smog res data: ,$response");
        print("id:"+prefs.getString('userId')!);


        notifyListeners();
        toggleshemmerdismis();
      } else {
        _is_smoke = "";
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


// api for get gender 22sep->
  String? _is_pet ;
  String? get is_pet => _is_pet;

  getIsPet(String? step,String? is_pet) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "is_pet=${prefs.getString("$is_pet")}",
    );

    final responseData = json.decode(response.toString());
    print('upload is_pet responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("is_pet res data: ,$response");
        print("id:"+prefs.getString('userId')!);

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _is_pet = "";
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




// api for get gender 22sep->
  String? _is_family ;
  String? get is_family => _is_family;

  getIsFamily(String? step,String? is_family) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "is_family=${prefs.getString("$is_family")}",
    );

    final responseData = json.decode(response.toString());
    print('upload is_family responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("is_family res data: ,$response");
        print("id:"+prefs.getString('userId')!);


        //_gender = await responseData["$gender"];
        //_step = await responseData["$step"];

        print('gender try block response$gender');
        print('step try block response$step');
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _gender = "";
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


// api for get gender 22sep->
  String? _age ;
  String? get age => _age;


  getAge(String? step,String? age) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "age=${prefs.getString("$age")}",
    );

    final responseData = json.decode(response.toString());
    print('upload age responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("age res data: ,$response");
        print("id:"+prefs.getString('userId')!);


        notifyListeners();
        toggleshemmerdismis();
      } else {
        _age = "";
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




// api for get gender 22sep->
  String? _income ;
  String? get income => _income;

  getIncome(String? step,String? income) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "income=${prefs.getString("$income")}",
    );

    final responseData = json.decode(response.toString());
    print('upload income responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("income res data: ,$response");
        print("id:"+prefs.getString('userId')!);


        notifyListeners();
        toggleshemmerdismis();
      } else {
        _income = "";
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




// api for get gender 22sep->
  String? _language ;
  String? get language => _language;

  getLanguage(String? step,String? language) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?step=${prefs.getString("$step")}"
        + '&' + "id=$userId"
        + '&' + "language=${prefs.getString("$language")}",
    );

    final responseData = json.decode(response.toString());
    print('upload language responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("language res data: ,$response");
        print("id:"+prefs.getString('userId')!);

        notifyListeners();
        toggleshemmerdismis();
      } else {
        _language = "";
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


  // upload documents post api->
  uploadDocument(String file) async {
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
    print(' uplode Document responseData $response');
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



// api for get gender 22sep->

  getCurrentCompleted() async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    Dio dio = Dio();

    var response = await dio.get(baseUrl + "api/users/compelete_profile?id=$userId");

    final responseData = json.decode(response.toString());
    print('completed step responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        print("completed step res data: ,$response");
        print("id:"+prefs.getString('userId')!);

        notifyListeners();
        toggleshemmerdismis();
      } else {
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


}
