// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/medical%20question/medicalqustion.dart';

addressbottomsheet(context, model) {
  return Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
                //  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add New Address',
                    style: textstyleHeading2(context)!.copyWith(color: colorredlight),
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon:Image(image: AssetImage('assets/icons/close.png')))
                ],
              ),
              Divider(),
              sizedboxheight(16.0),
              addressfullname(model),
              sizedboxheight(16.0),
              addressoneline(model),
              sizedboxheight(16.0),
              addresslinetwo(model),
              sizedboxheight(16.0),
              addresspin(model),
              sizedboxheight(16.0),
              addresscity(model),
              sizedboxheight(16.0),
              addressstate(model),
              sizedboxheight(16.0),
              addressmobile(model),
              sizedboxheight(16.0),
              addressaddbtn(context, model),
              sizedboxheight(16.0),
            ],
          ),
        ),
      ),
      elevation: 20.0,
      barrierColor: HexColor('#1C1244').withOpacity(0.8),
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      )));
}

Widget addressfullname(model) {
  return AllInputDesign(
    key: Key("fullname"),
    // controller: model.signupname,
    hintText: 'Enter Name',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget addressoneline(model) {
  return AllInputDesign(
    key: Key("addressoneline"),
    // controller: model.signupname,
    hintText: 'Enter Address Line One',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget addresslinetwo(model) {
  return AllInputDesign(
    key: Key("addresslinetwo"),
    // controller: model.signupname,
    hintText: 'Enter Address Line Two',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget addresscity(model) {
  return AllInputDesign(
    key: Key("addresscity"),
    // controller: model.signupname,
    hintText: 'Enter City',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget addressstate(model) {
  return AllInputDesign(
    key: Key("addressstate"),
    // controller: model.signupname,
    hintText: 'Enter State',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget addresspin(model) {
  return AllInputDesign(
    key: Key("addresspin"),
    // controller: model.signupMobile,
    maxLength: 6,
    counterText: '',
    hintText: 'Enter Mobile',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget addressmobile(model) {
  return AllInputDesign(
    key: Key("mobile"),
    // controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    hintText: 'Enter Mobile',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget addressaddbtn(context, model) {
  return Button(
    buttonName: 'Proceed To Pay',
    key: Key('addressaddbtn'),
    onPressed: () {
      Get.to(() => MedicalQustionPage());
    },
  );
}
