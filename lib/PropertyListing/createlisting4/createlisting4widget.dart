// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/propertyVerification1/propertyverificationpage1.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';

Widget nextBtn2(
  BuildContext context,
) {
  return Button(
    buttonName: 'Next',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(PropertyVerification1());
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget sevebutt2(context) {
  return Button(
    onPressed: () {
      Get.to(PropertyVerification1());
    },
    btnWidth: deviceWidth(context, 0.8),
    buttonName: 'Save Step',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}

Widget title() {
  return AllInputDesign(
    key: Key("Address, no."),
    fillColor: colorWhite,
    hintText: '',
    // controller: model.loginEmail,
    // autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    // prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    focusedBorderColor: colorskyblue,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.2),
    keyBoardType: TextInputType.phone,
    validatorFieldValue: '',
    validator: validateMobile,
  );
}

Widget discription() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 8,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 5,
          decoration: InputDecoration(
              fillColor: Colors.white, border: InputBorder.none),
        ),
      ),
    ),
  );
}

Widget generalfratures(context) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: rediobutton('View')),
          Expanded(child: rediobutton('Balcony/Garden')),
        ],
      ),
      Row(
        children: [
          Expanded(child: rediobutton('Minergie')),
          Expanded(child: rediobutton('Parking space')),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Garege')),
            Expanded(child: rediobutton('Lift')),
          ],
        ),
      ),
      rediobutton('Accessible with wheelchair'),
    ],
  );
}

Widget amenities(context) {
  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Fire place')),
            Expanded(child: rediobutton('Parquet flooring')),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Stone floor')),
            Expanded(child: rediobutton('Dishwasher')),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Tumbler')),
            Expanded(child: rediobutton('Washingmachine')),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('cable')),
            Expanded(child: rediobutton('Broadband internet')),
          ],
        ),
      ),
    ],
  );
}

Widget other(context) {
  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Pests allowed')),
            Expanded(child: rediobutton('Raised groundfloor')),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Ramp')),
            Expanded(child: rediobutton('Under bulding laws')),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            Expanded(child: rediobutton('Lifling platform')),
            Expanded(child: rediobutton('part of cooperative')),
          ],
        ),
      ),
    ],
  );
}

bool _checkbox = false;
Widget rediobutton(text) {
  return StatefulBuilder(builder: (context, setState) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: colorredlight,
          value: _checkbox,
          onChanged: (value) {
            setState(() {
              _checkbox = !_checkbox;
            });
          },
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  });
}
