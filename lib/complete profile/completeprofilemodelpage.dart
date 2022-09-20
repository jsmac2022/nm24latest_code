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
    print('vinay $value');
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

  //new api calling for upload profile image -->
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
    print("userId ${userId}");

    FormData data = FormData.fromMap({
      "image": await MultipartFile.fromFile(
        file,
        filename: fileName,
      ),
      //"id": prefs.getString('userId'),
    });
    Dio dio = Dio();
    await dio.post("http://134.209.229.112:8080/api/users/upload_profile?id=${prefs.getString('userId')}", data: data)
        .then((response) => print("api response  $response "))
        .catchError((error) => print(error));
  }


// api for get gender 20sep->
  int _gender = 0;
  int get gender => _gender;

  getGender() async {
   // print('get genderId $genderId');
    toggleshemmerShow();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    var response = await dio.get(baseUrl + '/api/users/upload_profile?'
        'step=${prefs.getString('step')},' +
        'id=${prefs.getString('userid')},' +
        'gender=${prefs.getString('gender')}',

      options: Options(
        headers: {},
        //headers: {"authorization": prefs.getString('headerToken')},
      ),
    );
    print(' gender response $response');
    final responseData = json.decode(response.toString());
    // print('vanderShopList responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
       // await prefs.getString('userId', responseData['id'],);
        //await prefs.getString('step', responseData['step'],);
        //await prefs.getString('gender', responseData['gender'],),

       _gender = responseData['data'];
        notifyListeners();
        toggleshemmerdismis();
      } else {
        _gender = 0;
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
      options: Options(
        headers: {},
        //headers: {"authorization": prefs.getString('headerToken')},
      ),
    );
    print(' marital response $response');
    final responseData = json.decode(response.toString());
    // print('vanderShopList responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        // await prefs.getString('userId', responseData['id'],);
        //await prefs.getString('step', responseData['step'],);
        //await prefs.getString('marital_status', responseData['marital_status'],),

        _marital_status = responseData['data'];
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
      options: Options(
        headers: {},
        //headers: {"authorization": prefs.getString('headerToken')},
      ),
    );
    print(' children response $response');
    final responseData = json.decode(response.toString());
    // print('vanderShopList responceData $responseData');

    try {
      if (responseData['statuscode'] == true) {
        // await prefs.getString('userId', responseData['id'],);
        //await prefs.getString('step', responseData['step'],);
        //await prefs.getString('children', responseData['children'],),

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



// upload profile api
  /*uploadProfileUpdate(context) async {
    toggleshemmerShow();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();

    Map<String, dynamic> rawData = {
      "id": prefs.getString('userId'),
      "image": oldpassword.text,
      "new_password": newPassword.text
      // "userId":"7b2bf97e-88c0-440c-82cc-96a50fd98a95"
    };

    print('upload Profile perams $rawData');
    var response = await dio.post(baseUrl + endpointUploadProfile,
        options: Options(
          headers: {"authorization": prefs.getString('headerToken')},),
        data: rawData);

    final responseData = json.decode(response.toString());
    print('upload profile responseData $responseData');

    try {
      if (responseData['status'] == true) {
        showFlutterToast('Profile picture Upload Successful');
        final profileview = Provider.of<ProfileModelPage>(context, listen: false);
        await profileview.profileViewFetch(context); //ye profile update ko show kr dega

        // Get.off(() => BottomNavBarPage());
        genderValueInitialize(context);

        resetAlltextfield();
        notifyListeners();
        toggleshemmerdismis();
      } else {
        toggleshemmerdismis();
        print('Error: ${responseData["message"]}');

        apiErrorAlertdialog(context, responseData["message"]);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('Error: ${e.toString()}');
    }
  }

  // reset all fields
  resetAlltextfield() {
    id.clear();
    image.clear();
    // mobile.clear();
    gender.clear();
    // newdob = null;
    // _selectedGender = '';
    notifyListeners();
  }

  // /edit profile api
  bool _autovalidatechngpassword = false;
  bool get autovalidatechngpassword => _autovalidatechngpassword;

  toggleautovalidate() {
    _autovalidatechngpassword = !_autovalidatechngpassword;
    notifyListeners();
  }

  TextEditingController id = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController gender = TextEditingController();


  String _selectedGender = '';
  String get selectedGender => _selectedGender;

  final List<String> _selectedGenderList = ['Male', 'Female', 'Diverse'];
  List get selectedGenderList => _selectedGenderList;

  genderValueInitialize(context) {
    final modelprofileview = Provider.of<ProfileModelPage>(context, listen: false);
    if (selectedGender == '') {
      print(selectedGender);
      _selectedGender = modelprofileview.profileviewList[0]['Customer']['gender'] ?? '';
      // notifyListeners();
      return selectedGender;
    } else {
      print(selectedGender);
      return selectedGender;
    }
  }

  toogleradiobtn(value) {
    _selectedGender = value;
    print(selectedGender);
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
  }*/


}
