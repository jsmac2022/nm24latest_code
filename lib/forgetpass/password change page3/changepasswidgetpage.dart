// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';

Widget iconTextWidget2(context, title) {
  return SizedBox(
    width: deviceWidth(context, 1.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image(
            image: AssetImage('assets/icons/phone.png'),
            fit: BoxFit.cover,
          ),
        ),
        sizedboxheight(10.0),
        Text(title, style: textstyleHeading2(context)!.copyWith(fontWeight: fontWeight900))
      ],
    ),
  );
}

Widget textwrite2(context) {
  return SizedBox(
    width: deviceWidth(context, 1.0),
    child: Text(
      "Enter your new password",
      maxLines: 2,
    style: textstyletitleHeading6(context),
    textAlign: TextAlign.center,
    ),
  );
}

var confirmPass;

Widget newPasswordwidget(model) {
  return AllInputDesign(
    key: Key("cpassword"),
    inputHeaderName: 'New Password',
    obsecureText: model.obscuretext1,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: colorWhite,
    hintText: 'New Password',
    textInputAction: TextInputAction.next,
    controller: model.newPassword,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.1),
    focusedBorderColor: colorskyblue,
    prefixIcon: Image(image: AssetImage('assets/icons/Lock.png')),
    suffixIcon: GestureDetector(
      key: Key('password_visibility'),
      child: Icon(
        Icons.visibility,
        size: 20.0,color: model.isTapVissible1 ? colorredlight :Colors.black45
      ),
      onTap: () {
        model.toggle1();
      },
    ),
    validatorFieldValue: 'password',
    validator: (value) {
      confirmPass = value;
      if (value.isEmpty) {
        return "Please Enter New Password";
      } else if (value.length < 6) {
        return "Password must be atleast 6 characters long";
      } else {
        return null;
      }
    },
    keyBoardType: TextInputType.emailAddress,
  );
}

Widget confirmPasswordwidget(model) {
  return AllInputDesign(
    key: Key("cnpassword"),
    inputHeaderName: 'Confirm Password',
    obsecureText: model.obscuretext2,
    fillColor: colorWhite,
    hintText: 'Confirm Password',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    textInputAction: TextInputAction.done,
    controller: model.confirmPassword,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.1),
    focusedBorderColor: colorskyblue,
    prefixIcon: Image(image: AssetImage('assets/icons/Lock.png')),
    suffixIcon: GestureDetector(
      key: Key('password_visibility'),
      child: Icon(
        Icons.visibility,
        size: 20.0,color: model.isTapVissible2 ? colorredlight :Colors.black45 
      ),
      onTap: () {
        model.toggle2();
      },
    ),
    validatorFieldValue: 'password',
    
    validator: (value) {
      if (value.isEmpty) {
        return "Please Re-Enter New Password";
      } else if (value.length < 6) {
        return "Password must be atleast 6 characters long";
      } else if (value != confirmPass) {
        return "Password must be same as above";
      } else {
        return null;
      }
    },
    keyBoardType: TextInputType.emailAddress,
  );
}

Widget newpasssavebtn(context, model, userid) {
  return Button(
      buttonName: 'SAVE',
      key: Key('forget_submit'),
      onPressed: () {
            if (model.formKeysignup.currentState.validate()) {
              //  model.changepasswordsubmit(context, userid);
         Get.to(() =>BottomNavBarPage());
      } else {
        model.toggleautovalidate();
      }
 
      });
}
