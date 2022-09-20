// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/healthinsurancebuypage.dart';

Widget checkboxself(context, model) {
  return Row(
    children: [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        value: model.checkboxvalue,
        onChanged: (value) {
          model.toggleCheckbox();
        },
        activeColor: colorskyblue,
      ),
      sizedboxwidth(5.0),
      Text(
        'Self',
        style: textstyletitleHeading6(context),
      ),
    ],
  );
}

Widget addanothermemberbtn(context, model) {
  return Button(
    onPressed: () {},
    buttonName: '+ Add Another Member',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}

Widget zipcodeditwidget(context, model) {
  return AllInputDesign(
    key: Key("zip"),
    maxLength: 6,
    // hintText: modelprofileview.userdataMap['zipcode'].toString() == 'null'
    //     ? 'zip'
    //     : modelprofileview.userdataMap['zipcode'].toString(),
    // controller: model.zipgController,
    hintText: 'Enter your pincode',
    counterText: '',
    textInputAction: TextInputAction.next,
    inputHeaderName: 'Where do you live ?',
    autofillHints: [AutofillHints.postalCode],
    floatingLabelBehavior: FloatingLabelBehavior.never,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'zip',
    validator: validaterequired,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget yourcity(model) {
  return AllInputDesign(
    key: Key("fullname1"),
    // controller: model.signupname,
    hintText: 'Your city',
    textInputAction: TextInputAction.next,
    autofillHints: [AutofillHints.addressCity],
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

Widget procidecheckbox(context, model) {
  return Row(
    children: [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        value: model.checkboxTC,
        onChanged: (value) {
          model.toggleCheckboxTC();
        },
        activeColor: colorskyblue,
      ),
      sizedboxwidth(5.0),
      SizedBox(
        width: deviceWidth(context, 0.7),
        child: Text(
          'By Proceeding, I agree to the Terms and Conditions',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: textstylesubtitle1(context),
        ),
      ),
    ],
  );
}

Widget proceedbtn(context, model) {
  return Button(
    buttonName: 'Proceed',
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => HealthInsuranceBuyPage());
    },
  );
}

Widget genderdropdown(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Gender',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: deviceWidth(context, 0.4),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: borderCustom()),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            focusColor: Colors.white,
            value: model.chosengenderValue,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.genderList.map<DropdownMenuItem<String>>((value1) {
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
              'Gender',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (valuegender) {
              model.togglegender(valuegender);
            },
          ),
        ),
      ),
    ],
  );
}

Widget selectdob(context, model) {
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
      ),
    ],
  );
}

