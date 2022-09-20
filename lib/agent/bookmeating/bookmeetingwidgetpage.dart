// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';

Widget titlemeeting() {
  return AllInputDesign(
    key: Key("ff"),
    // controller: model.signupname,
 
    inputHeaderName: 'Title',
    floatingLabelBehavior: FloatingLabelBehavior.never,
    boxshadow: boxShadowcontainer(),
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget messagebox() {
  return AllInputDesign(
    key: Key("ff1"),
    // controller: model.signupname,
    inputHeaderName: 'Description',
    hintText: 'Your message',

    maxLines: 6,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    boxshadow: boxShadowcontainer(),
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.name],
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    textCapitalization: TextCapitalization.sentences,
  );
}

Widget selectdate(context, model) {
  return InkWell(
    onTap: () {
      model.selectDate(context);
    },
    child: SizedBox(
      width: deviceWidth(context, 0.4),
      child: AllInputDesign(
        textInputAction: TextInputAction.next,
        key: Key("dob"),
        enabled: false,
        labelText: model.gettext(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: 'DD-MM-YYYY',
        suffixIcon: Icon(
          Icons.calendar_today_outlined,
          color: Colors.grey,
          size: 20,
        ),
        keyBoardType: TextInputType.emailAddress,
        //  validatorFieldValue: 'name12',
        // validator: validateAreaName,
      ),
    ),
  );
}

Widget selecttime(context, model) {
  return InkWell(
    onTap: () {
      model.selectTime(context);
    },
    child: SizedBox(
      width: deviceWidth(context, 0.4),
      child: AllInputDesign(
        key: Key("time"),
        enabled: false,
        labelText: model.gettimetext(),
        textInputAction: TextInputAction.next,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: 'Enter your Name',
        suffixIcon: Icon(Icons.watch_later_outlined),
        keyBoardType: TextInputType.emailAddress,
      ),
    ),
  );
}

Widget bookameeting(context, model) {
  return Button(
      btnWidth: deviceWidth(context, 1.0), buttonName: 'Book A Meeting', key: Key('signup_submit'), onPressed: () async {});
}
