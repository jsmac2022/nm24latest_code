// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color colorWhite = Colors.white;
Color colorblack = Colors.black;
// Color colorskyblue = HexColor("#53B1EF");
Color colorskyblue = HexColor("#00E7CE");
// Color colorredlight = HexColor("#F1691F");
Color colorredlight = HexColor("#FF9B00");
Color colorgreyblack = Colors.black12;
Color colorgreylight = HexColor('#F2F2F3');
Color colorsanderchat = HexColor("#F3F8FF");
Color coloryourchat = HexColor("#FD7235");
Color greenchat = HexColor("#75BF72");

const double fontsizeheading25 = 28.0;
const double fontsizeheading22 = 25.0;
const double fontsizetitle = 16.0;
const double fontsize14 = 14.0;
const double fontsize11 = 11.0;

const double padding20 = 20.0;
const double padding15 = 15.0;
const double padding10 = 10.0;
const double padding8 = 8.0;
const double padding5 = 5.0;

FontWeight fontWeight600 = FontWeight.w600;
FontWeight fontWeight700 = FontWeight.w700;
FontWeight fontWeight900 = FontWeight.bold;
FontWeight fontWeight400 = FontWeight.w400;
FontWeight fontWeight500 = FontWeight.w500;
FontWeight fontWeightnormal = FontWeight.normal;

TextStyle hedingHintFontStyle = TextStyle(
  color: Colors.black87,
  fontSize: 16.5,
  fontWeight: FontWeight.w600,
  // fontFamily: pCommonRegularFont,
);

TextStyle labelHintFontStyle = TextStyle(
  color: Colors.black87,
  fontSize: 14.5,
  fontWeight: FontWeight.w600,
  // fontFamily: pCommonRegularFont,
);

TextStyle? textstyleHeading1(context) {
  return Theme.of(context).textTheme.headline1;
}

TextStyle? textstyleHeading2(context) {
  return Theme.of(context).textTheme.headline2;
}

TextStyle? textstyleHeading3(context) {
  return Theme.of(context).textTheme.headline3;
}

TextStyle? textstyletitleHeading6(context) {
  return Theme.of(context).textTheme.headline6;
}

TextStyle? textstylesubtitle2(context) {
  return Theme.of(context).textTheme.subtitle2;
}

TextStyle? textstylesubtitle1(context) {
  return Theme.of(context).textTheme.subtitle1;
}

double deviceWidth(context, size) {
  return MediaQuery.of(context).size.width * size;
}

double deviceheight(context, size) {
  return MediaQuery.of(context).size.height * size;
}

BoxBorder borderCustom() {
  return Border.all(color: colorgreyblack.withOpacity(0.2));
}

BoxBorder borderCustomlight() {
  return Border.all(color: colorgreyblack.withOpacity(0.05));
}

Widget sizedboxheight(height) {
  return SizedBox(
    height: height,
  );
}

Widget sizedboxwidth(width) {
  return SizedBox(
    width: width,
  );
}

Widget dividerVertical() {
  return Container(
    width: 1,
    height: double.maxFinite,
    color: Colors.black12,
  );
}

Widget dividerHorizontal(context, width, height) {
  return Center(
    child: Container(
      // width: double.maxFinite,
      width: deviceWidth(context, width),
      decoration: BoxDecoration(
          color: colorgreyblack, borderRadius: borderRadiuscircular(20.0)),
      height: height,
    ),
  );
}

Decoration decorationtoprounded() {
  return BoxDecoration(
    color: colorWhite,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ),
  );
}

BorderRadius borderRadiuscircular(radius) {
  return BorderRadius.circular(radius);
}

boxShadowcontainer() {
  return [
    BoxShadow(
      color: Colors.grey.withOpacity(0.07),
      spreadRadius: 3,
      blurRadius: 4,
      offset: Offset(0, 3),
    ),
  ];
}

mediaText(context) {
  return MediaQuery.of(context).copyWith(textScaleFactor: 0.9);
}
