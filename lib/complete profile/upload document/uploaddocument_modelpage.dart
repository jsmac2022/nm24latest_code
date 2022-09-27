import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nm24/api%20url/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UploadDocumentModelPage extends ChangeNotifier {

  //new POST Api calling for upload profile image 22sep-->
  String? _profilePath;
  String? _profilePath1;
  String? _profilePath2;
  String? _profilePath3;
  String? _profilePath4;

  String? get profilePath => _profilePath;
  String? get profilePath1 => _profilePath1;
  String? get profilePath2 => _profilePath2;
  String? get profilePath3 => _profilePath3;
  String? get profilePath4 => _profilePath4;

// new function for get api call
  bool _isShimmer = false;
  bool get isShimmer => _isShimmer;

  toggleshemmerShow() {
    _isShimmer = true;
    //notifyListeners();
  }

  toggleshemmerdismis() {
    _isShimmer = false;
    //notifyListeners();
  }

  Future getImageKeyWise(key) async {
    String _image;
    final picker = ImagePicker();

    var _pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 50, // <- Reduce Image quality
        maxHeight: 500, // <- reduce the image size
        maxWidth: 500);
    _image = _pickedFile?.path as String;
    _uploadKey(_image, key);
  }

  void _uploadKey(String file, String key) async {
    String fileName = file.split('/').last;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    FormData data = FormData.fromMap(
      {
        "image": await MultipartFile.fromFile(
          file,
          filename: fileName,
        ),
        "key": key,
        "id":userId
      },
    );
    Dio dio = Dio();
    var response = await dio
        .post(baseUrl + "api/users/upload_document", data: data);
    print(' uplode profile responseData $response');
    final responseData = json.decode(response.toString());

    try {
      if (responseData['statuscode'] == true) {
        if (key == "passport_id") _profilePath1 = file;
        if (key == "debt_collect") _profilePath2 = file;
        if (key == "family_photo") _profilePath3 = file;
        if (key == "other_docs") _profilePath4 = file;
        //notifyListeners();
        toggleshemmerdismis();
      } else {
        if (key == "passport_id") _profilePath1 = "";
        if (key == "debt_collect") _profilePath2 = "";
        if (key == "family_photo") _profilePath3 = "";
        if (key == "other_docs") _profilePath4 = "";
        //notifyListeners();
        toggleshemmerdismis();
        print(responseData['message']);
      }
    } catch (e) {
      toggleshemmerdismis();
      print('error $e');
    }
  }

}