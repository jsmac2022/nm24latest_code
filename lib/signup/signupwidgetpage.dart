// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/apierroralertdiloge.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/common/commonwidgets/toast.dart';
import 'package:nm24/login/loginpage.dart';
import 'package:provider/provider.dart';

Widget signupfullname(model) {
  return AllInputDesign(
    key: Key("fullname"),
    controller: model.signupname,
    labelText: 'Full Name',
    hintText: 'Enter your Name',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    prefixIcon: Image(image: AssetImage('assets/icons/people.png')),
    keyBoardType: TextInputType.name,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z-0-9]+|\s",)),  //adedd code of -0-9
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget signupemail(model) {
  return AllInputDesign(
    key: Key("signupemail"),
    hintText: 'Email',
    controller: model.signupemail,
    autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'email',
    validator: validateEmailField,
  );
}

Widget signupmobile(model) {
  return AllInputDesign(
    key: Key("mobile"),
    controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    labelText: 'Phone Number',
    hintText: 'Enter your number',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/call.png')),
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget signupPassword(model) {
  return AllInputDesign(
    key: Key("signuppassword"),
    // inputHeaderName:'Password' ,
    controller: model.signupPassword,
    labelText: 'Password',

    hintText: 'Password', obsecureText: model.obscuretext,
    textInputAction: TextInputAction.done,
    autofillHints: [AutofillHints.password],

    prefixIcon: Image(image: AssetImage('assets/icons/Lock.png')),
    suffixIcon: IconButton(
      key: Key('password_visibility'),
      onPressed: () {
        model.toggle();
      },
      icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? Colors.black45 : Colors.blue),
    ),
    validatorFieldValue: 'password',
    validator: validatePassword,
    keyBoardType: TextInputType.text,
  );
}

Widget checkboxTC(context, model) {
  return Row(
    children: [
      Checkbox(
              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5)),
        value: model.checkboxvalue,
        onChanged: (value) {
          model.toggleCheckbox();
        },
        activeColor: colorskyblue,
      ),
      SizedBox(
        width: deviceWidth(context, 0.7),
        child: Text(
          'I agree to the terms and conditions',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: textstyletitleHeading6(context)!.copyWith(fontSize: 16),
        ),
      ),
    ],
  );
}

Widget signupBtn(context, model) {
  return Button(
    btnWidth: deviceWidth(context, 1.0),
    buttonName: 'SIGN UP',
    key: Key('signup_submit'),
    onPressed: () async {
      if (model.formKeysignup.currentState.validate()) {
        if (model.checkboxvalue == false) {
          apiErrorAlertdialog(context, 'Please Check Condition');
        } else {
          await model.signupsubmit(context);
        }
      } else {
        //model.toggleautovalidate();
        showFlutterToast('please fill all fields');
      }

    },
  );
}

Widget allreadyhaveanAccount(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Already have an account?",
          style: textstyletitleHeading6(
            context,
          )),
      TextButton(
          onPressed: () async {
            Get.back();
          },
          child: Text(
            'Sign In',
            style: textstyletitleHeading6(context)!.copyWith(color: colorskyblue, fontWeight: fontWeight600),
          ))
    ],
  );
}
