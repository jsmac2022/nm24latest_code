// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/createlisting3/createlisting3page.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';

Widget nextBtn3(BuildContext context,) {
  return Button(
    buttonName: 'Next',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(Createlisting3());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget sevebutt(context) {
  return Button(
    onPressed: () {
        Get.to(Createlisting3());
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


String? dropDownValue;
List<String> buyingList = [
  'Cash',
  'Finance',
];
setFilters() {
    dropDownValue = buyingList[0];
}

Widget dropdowne(){
  return  StatefulBuilder(
    builder: (context ,setState) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 5, bottom: 5, left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  hint: Text("Buying with",style: TextStyle(fontSize: 13),),
                  underline: Container(),
                  value: dropDownValue,
                  onChanged: (String? value) {
                    setState(() {
                      dropDownValue = value;
                      print(dropDownValue);
                    });
                  },
                  items: buyingList
                      .map((cityTitle) => DropdownMenuItem(
                      value: cityTitle, child: Text(cityTitle,style: TextStyle(fontSize: 13),)))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    }
  );
}

Widget address() {
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
    validatorFieldValue: 'phone',
    validator: validateMobile,
  );
}


Widget zipcode() {
  return AllInputDesign(
    key: Key("Zipcode, city"),
    fillColor: colorWhite,
    hintText: '',
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
bool _checkbox = false;
Widget rediobutton() {
  return StatefulBuilder(
      builder: (context ,setState) {
      return    Row(
        children: [
          Checkbox(checkColor: Colors.white,activeColor: colorredlight,
            value: _checkbox,
            onChanged: (value) {
              setState(() {
                _checkbox = !_checkbox;
              });
            },
          ),
          Text('Hide exact address'),
        ],
      );
    }
  );
}