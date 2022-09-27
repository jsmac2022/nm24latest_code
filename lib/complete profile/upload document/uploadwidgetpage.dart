// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/upload%20document/uploadsucceful.dart';

Widget headingsubtitlewidget(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Let's Upload document",
          textAlign: TextAlign.center, style: textstyleHeading1(context)!.copyWith(color: colorblack)),
      sizedboxheight(20.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text('Add document from your phone or open camera to scan new document',
            textAlign: TextAlign.center, style: textstylesubtitle1(context)),
      )
    ],
  );
}

Widget uploadgellerybox(context) {
  return AnimatedContainer(
    width: deviceWidth(context, 0.7),
    height: deviceWidth(context, 0.3),
    duration: Duration(milliseconds: 100),
    decoration:
        BoxDecoration(color: colorWhite,
          border: borderCustomlight(),
         boxShadow: boxShadowcontainer(), borderRadius: borderRadiuscircular(12.0)),
    child: Material(
      borderRadius: borderRadiuscircular(12.0),
      color: colorWhite,
      child: InkWell(
        onTap: () {},
        child: Center(
            child: Text(
          'Open Gallery',
          style: textstyletitleHeading6(context),
        )),
      ),
    ),
  );
}

Widget uploadcamerabox(context) {
  return AnimatedContainer(
    width: deviceWidth(context, 0.7),
    height: deviceWidth(context, 0.3),
    duration: Duration(milliseconds: 100),
    decoration:
        BoxDecoration(color: colorWhite, boxShadow: boxShadowcontainer(),
        border: borderCustomlight(),
         borderRadius: borderRadiuscircular(12.0)),
    child: Material(
      borderRadius: borderRadiuscircular(12.0),
      color: colorWhite,
      child: InkWell(
        onTap: () {},
        child: Center(
            child: Text(
          'Open Camera',
          style: textstyletitleHeading6(context),
        )),
      ),
    ),
  );
}

Widget uploadBtn(context) {
  return Button(
    buttonName: 'Upload',
    borderRadius: borderRadiuscircular(30.0),
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => UploadsuccesfulPage());
    },
  );
}
