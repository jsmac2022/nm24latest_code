// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, annotate_overrides, use_key_in_widget_constructors, overridden_fields

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String? buttonName;
  final Key? key;
  final borderRadius;
  final double? btnWidth;
  final double? btnHeight;
  final Color? btnColor;
  final Color? btnColorGradientUp;
  final Color? btnColorGradientdown;
  final Color? borderColor;
  final Color? textColor;
  final String? imageAsset;
  final double? elevation;
  final double? btnfontsize;
  final  btnstyle;
  bool isLoading;
  final buttonNameloading;

  Button({
    this.buttonName,
    required this.onPressed,
    this.borderRadius,
    this.btnWidth,
    this.btnHeight,
    this.btnColor,
    this.btnColorGradientUp,
    this.btnColorGradientdown,
    this.borderColor,
    this.textColor,
    this.key,
    this.imageAsset,
    this.elevation,
    this.btnstyle,
    this.btnfontsize,
    this.buttonNameloading,
    this.isLoading=false
  });
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: 0.0, right: 0.0),
      child: Container(
        height: btnHeight ?? 50.0,
        width: btnWidth ?? screenSize,
        decoration: BoxDecoration(
          // gradient:  LinearGradient(
          //                 begin: Alignment.topCenter,
          //                 end: Alignment.bottomCenter,
          //                 colors: [HexColor('#FDCD35'), HexColor('#FD7235')]),
          // color: btnColor ?? Colors.transparent,
          color: btnColor ?? colorredlight,
          borderRadius: borderRadius ?? BorderRadius.circular(22.0),
        ),
        child: MaterialButton(
          
          splashColor: Colors.grey,
          // animationDuration: Duration(seconds: 10),
          hoverColor: Colors.black26,

          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(22.0),
            side: BorderSide(color: borderColor ?? Colors.transparent),
          ),
          key: key,
          elevation: elevation ?? 3,
          child: imageAsset != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [prefiximage(), btnname(context)],
                )
              : btnname(context),

          onPressed: onPressed,
        ),
      ),
    );
  }

  Widget prefiximage() {
    return Image.asset(
      imageAsset!,
      fit: BoxFit.cover,
    );
  }

  Widget btnname(context) {
    var screenSize = MediaQuery.of(context).size.width;
    return Text(
      buttonName!,
      style:btnstyle?? TextStyle(
        inherit: true,
        color: textColor ?? Colors.white,
        fontFamily: 'Nunito',
        fontWeight: fontWeight500,
        fontSize:btnfontsize??18,
        letterSpacing: 0.3,
      ),
    );
  }
}
