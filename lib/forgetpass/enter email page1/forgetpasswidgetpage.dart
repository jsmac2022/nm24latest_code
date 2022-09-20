// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/forgetpass/verify%20otp%20page2/otpveryfypage.dart';

Widget iconTextWidget(context, title) {
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

Widget textwrite(context) {
  return SizedBox(
    width: deviceWidth(context, 0.81),
    child: Text(
      "Enter Your Email Address And We Will Send You Instructions To Reset Your Password",
      maxLines: 2,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
    ),
  );
}

Widget forgetpassemail(model) {
  return AllInputDesign(
    key: Key("email1"),
    hintText: 'Email',
    // controller: model.loginEmail,
    autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'email',
    validator: validateEmailField,
  );
}

Widget sandotpbtn(context, model,formKeyforget) {
  return Button(
    buttonName: 'Continue',
    key: Key('forget'),
    onPressed: () {
       if (formKeyforget.currentState.validate()) {
          // model.forgetpasssubmit(context);
         Get.to(() => OtpVeryfyPage());
      } else {
        model.toggleautovalidate();
      }
  
    },
  );
}
