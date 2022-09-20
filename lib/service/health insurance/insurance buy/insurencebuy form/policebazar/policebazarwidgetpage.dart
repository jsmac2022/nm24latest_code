// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/address%20add/addresswidgetpage.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/medical%20question/medicalqustion.dart';

Widget salutationdropdown(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Salutation',
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
            value: model.chosensalution,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.salutionlist.map<DropdownMenuItem<String>>((value1) {
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
              'Salutation',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (value) {
              model.togglesalution(value);
            },
          ),
        ),
      ),
    ],
  );
}

Widget pfullname(model) {
  return AllInputDesign(
    key: Key("fullname"),
    // controller: model.signupname,
    inputHeaderName: 'Full Name',
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

Widget pmobile(model) {
  return AllInputDesign(
    key: Key("mobile"),
    // controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    inputHeaderName: 'Mobile Number',
    labelText: 'Phone Number',
    hintText: 'Enter your number',
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

Widget pdob(context, model) {
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

Widget pemail(model) {
  return AllInputDesign(
    key: Key("signupemail"),
    inputHeaderName: 'Email id',
    hintText: 'Email',
    // controller: model.signupemail,
    autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.emailAddress,
    validatorFieldValue: 'email',
    validator: validateEmailField,
  );
}

Widget pgender1dropdown(context, model) {
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
        width: deviceWidth(context, 1.0),
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

Widget poccupationdropdoun(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Occupation',
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
            value: model.choseocupationlist,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.ocupationlist.map<DropdownMenuItem<String>>((value1) {
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
              'Occupation',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (value) {
              model.toggleoccupation(value);
            },
          ),
        ),
      ),
    ],
  );
}

Widget pmaterialstatusdropdoun(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Marital Status',
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
            value: model.chosematerialstatus,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.materialstatuslist.map<DropdownMenuItem<String>>((value1) {
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
              'Marital Status',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (value) {
              model.togglematerialstatus(value);
            },
          ),
        ),
      ),
    ],
  );
}

Widget polocicheckbox(context, model) {
  return Row(
    children: [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        value: model.checkboxTC,
        onChanged: (value) {
          model.toggleCheckboxTC();
        },
        activeColor: colorredlight,
      ),
      SizedBox(
        width: deviceWidth(context, 0.8),
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

Widget paddaddressbtn(context, model) {
  return Button(
    onPressed: () {
      addressbottomsheet(context,model);
    },
    buttonName: '+ Add New Address',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}

Widget ppaybtn(context, model) {
  return Button(
    buttonName: 'Proceed To Pay',
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => MedicalQustionPage());
    },
  );
}

