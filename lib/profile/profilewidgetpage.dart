// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/completeprofilepage.dart';



Widget profilepic() {
  return SizedBox(
    width: 200,
    height: 200,
    child: Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(color: colorgreyblack, borderRadius: borderRadiuscircular(100.0)),
          child: Image(
            image: AssetImage('assets/icons/profilepic.png'),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image(
              image: AssetImage('assets/icons/unverified.png'),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget profilefullname() {
  return AllInputDesign(
    key: Key("fullname"),
    // controller: model.signupname,
    inputHeaderName: 'Name',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    hintText: 'Enter your Name',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    prefixIcon: Image(image: AssetImage('assets/icons/people.png')),
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget profileemail() {
  return AllInputDesign(
    key: Key("signupemail"),
    hintText: 'Email',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    inputHeaderName: 'Email',
    // controller: model.signupemail,
    autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'email',
    validator: validateEmailField,
  );
}

Widget profilemobile() {
  return AllInputDesign(
    key: Key("mobile"),
    // controller: model.signupMobile,
    maxLength: 10,
    inputHeaderName: 'Mobile Number',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    counterText: '',
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

Widget languagedropdown(BuildContext context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Country',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: deviceWidth(context, 1.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: borderCustom()),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            focusColor: Colors.white,
            value: model.choselanguage,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.languagelist.map<DropdownMenuItem<String>>((value1) {
              return DropdownMenuItem<String>(
                value: value1,
                child: Text(
                  value1,
                  style: textstyletitleHeading6(context),
                ),
              );
            }).toList(),
            hint: Text(
              // modelprofileview.userdataMap['country'].toString() == 'null'
              //     ? 'Contry'
              //     : modelprofileview.userdataMap['country'].toString(),
              'Language',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (value) {
              model.togglelanguage(value);
            },
          ),
        ),
      ),
    ],
  );
}

Widget verifybtn() {
  return Button(
    onPressed: () {
      Get.to(() => CompleteProfilePage());
    },
    buttonName: 'Verify Your Profile  -->',
    textColor: colorblack,
    
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}
