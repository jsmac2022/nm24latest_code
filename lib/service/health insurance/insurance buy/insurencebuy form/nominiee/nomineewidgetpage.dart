

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/policebazar/policebazarpage.dart';


Widget nomineefullname(model) {
  return AllInputDesign(
    key: Key("fullname"),
    // controller: model.signupname,
    inputHeaderName:'Full Name' ,
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

Widget nomineerelation(model) {
  return AllInputDesign(
    key: Key("relation"),
    // controller: model.signupname,
    inputHeaderName:'Nominee Relation' ,
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

Widget nomineegender(model) {
  return AllInputDesign(
    key: Key("gender"),
    // controller: model.signupname,
    inputHeaderName:'Gender' ,
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

Widget selectnomineebdate(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Date Of Birth',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      InkWell(
        onTap: () {
          model.selectDate(context);
        },
        child: SizedBox(
          width: deviceWidth(context, 1.0),
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
      ),
    ],
  );
}

Widget submitnomineetbtn(context, model) {
  return Button(
    buttonName: 'Submit',
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => PolicebazarPage());
    },
  );
}