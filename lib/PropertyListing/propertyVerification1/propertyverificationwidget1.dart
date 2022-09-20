// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/propertyAd/propertydpage.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';

Widget nextBtn1(
  BuildContext context,
) {
  return Button(
    buttonName: 'Continue',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(PropertyAd());
    },
  );
}

Widget sevebutt3(
  BuildContext context,
) {
  return Button(
    buttonName: 'Seve Step',
    // key: Key('login_submit'),
    textColor: colorredlight,
    btnColor: colorWhite,
    borderColor: colorredlight,
    onPressed: () {
      Get.to(PropertyAd());
    },
  );
}

Widget contanrbox() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      sizedboxheight(15.0),
      Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    ],
  );
}

Widget mobile() {
  return AllInputDesign(
    key: Key("phone"),
    fillColor: colorWhite,
    hintText: 'Select',
    // controller: model.loginEmail,
    // autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    // prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    focusedBorderColor: colorskyblue,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.2),
    keyBoardType: TextInputType.phone,
    validatorFieldValue: 'phone',
    validator: validateMobile,
  );
}

String? dropDownValue;
List<String> buyingList = [
  'Verification by SMS',
  'Verification by Gmail',
  'Verification by Call',
];
setFilters() {
  dropDownValue = buyingList[0];
}

Widget selectoptiondropdowne(add) {
  return StatefulBuilder(builder: (context, setState) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownButton(
                isExpanded: true,
                hint: Text(
                  "Select option",
                  style: TextStyle(fontSize: 13),
                ),
                underline: Container(),
                value: dropDownValue,
                onChanged: (String? value) {
                  setState(() {
                    dropDownValue = value;
                    print(dropDownValue);
                    add = true;
                  });
                },
                items: buyingList
                    .map((cityTitle) => DropdownMenuItem(
                        value: cityTitle,
                        child: Text(
                          cityTitle,
                          style: TextStyle(fontSize: 13),
                        )))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  });
}

Widget securitycode() {
  return AllInputDesign(
    key: Key("code"),
    fillColor: colorWhite,
    hintText: 'Select',
    // controller: model.loginEmail,
    // autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    // prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    focusedBorderColor: colorskyblue,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.2),
    keyBoardType: TextInputType.phone,
    validatorFieldValue: 'phone',
    validator: validateMobile,
  );
}
