// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/Createlisting4/Createlisting4page.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';

Widget uplodeimage() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      sizedboxheight(20.0),
      Text(
        'Uplode images',
        style: hedingHintFontStyle,
      ),
      sizedboxheight(15.0),
      Text(
        'Uplode a few images od your flate. Floor plans can be added as pictures only (no PDF). Pictures are not permitter.',
        style: labelHintFontStyle,
      ),
    ],
  );
}

Widget chooseimagebox(context) {
  return Card(
    shadowColor: Colors.white,
    elevation: 8,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sizedboxheight(20.0),
          Icon(
            Icons.add_photo_alternate_outlined,
            color: Colors.black45,
            size: 30,
          ),
          sizedboxheight(15.0),
          Text(
            'choose a images ',
            style: labelHintFontStyle,
          ),
        ],
      ),
    ),
  );
}

Widget addimagebox(context) {
  return Card(
    shadowColor: Colors.white,
    elevation: 8,
    child: SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '+ Add images ',
            style: labelHintFontStyle,
          ),
        ],
      ),
    ),
  );
}

Widget nextBtn(
  BuildContext context,
) {
  return Button(
    buttonName: 'Next',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(Createlisting4());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget sevebutt1(context) {
  return Button(
    onPressed: () {
      Get.to(Createlisting4());
    },
    btnWidth: deviceWidth(context, 0.8),
    buttonName: 'Save Step',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}

Widget textcontent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      sizedboxheight(15.0),
      Text(
        'First image will be used as cover image drag image to change their order.',
        style: labelHintFontStyle,
      ),
    ],
  );
}
