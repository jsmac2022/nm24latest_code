// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/forgetpass/password%20change%20page3/changepasspage.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:provider/provider.dart';

Widget iconotpTextWidget(context, title) {
  return SizedBox(
    width: deviceWidth(context, 1.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Image(
            image: AssetImage('assets/icons/phone1.png'),
            fit: BoxFit.cover,
          ),
        ),
        Text(title,
            style:
                textstyleHeading2(context)!.copyWith(fontWeight: fontWeight900))
      ],
    ),
  );
}

Widget textwrite1(context) {
  return SizedBox(
    width: deviceWidth(context, 0.81),
    child: Text(
      "Otp has been sent to **********\n Please Verify",
      maxLines: 2,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
    ),
  );
}

var otphitcode;

Widget otptypeWidget(context, model) {
  return OtpTextField(
    keyboardType: TextInputType.number,
    numberOfFields: 5,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    borderColor: colorskyblue,
    focusedBorderColor: colorskyblue,
    borderRadius: BorderRadius.circular(15.0),
    fieldWidth: 40.0,

    showFieldAsBox: true, //set to true to show as box or false to show as dash
    onCodeChanged: (String verificationCode) {
      //handle validation or checks here
    },

    onSubmit: (String verificationCode) {
      Provider.of<TwillioModelPage>(context, listen: false)
          .verificationfun(verificationCode);
    },
  );
}

Widget otpverifybtn(context, model) {
  return Button(
    buttonName: 'Verify',
   // key: Key('forget_submit'),
    isLoading: model.isShimmer,
    buttonNameloading: 'Verify',
    key: Key('login_submi'),
    onPressed: () {
      //  model.signInWithPhoneNumber(context);
      /*Get.to(() => ChangePassPage());*/
      Provider.of<TwillioModelPage>(context, listen: false).otpverofytwilio(context,model);
      Get.to(() => BottomNavBarPage());
    },
  );
}

Widget resandotprowforget(context, model) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      OtpTimerButton(
        controller: model.controller,
        onPressed: () {},
        text: Text('Resend OTP'),
        duration: 60,
      ),

    ],
  );
}


