// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/medical%20question/medicalqustion.dart';

Widget headerinsuranceform(context) {
  return Container(
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(color: colorskyblue.withOpacity(0.8), borderRadius: borderRadiuscircular(12.0)),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(7.0),
            width: 80,height: 80,color: colorWhite,
            child: Image(image: AssetImage('assets/images/banklogo.png')),),
        ),
        sizedboxwidth(10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Arogya Sanjeevani',
              style: textstyletitleHeading6(context)!.copyWith(color: colorWhite),
            ),
            sizedboxheight(7.0),
            Row(
              children: [
                Text(
                  'Coverage Value : ',
                  style: textstylesubtitle1(context)!.copyWith(color: Colors.white70),
                ),
                Text(
                  '7,00,000',
                  style: textstyletitleHeading6(context)!.copyWith(color: colorWhite),
                ),
              ],
            ),
            sizedboxheight(7.0),
            Row(
              children: [
                Text(
                  'Premium : ',
                  style: textstylesubtitle1(context)!.copyWith(color: colorWhite),
                ),
                Text(
                  '50 + GST',
                  style: textstyletitleHeading6(context)!.copyWith(color: colorWhite),
                ),
              ],
            ),
      
       
          ],
        ),
      ],
    ),
  );
}

Widget hfullname(model) {
  return AllInputDesign(
    key: Key("fullname"),
    // controller: model.signupname,
    inputHeaderName:'Full Name' ,
    hintText: 'Enter your Name',
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

Widget materialstatusdropdoun(context, model) {
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

Widget heightwidgrt(context,model) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AllInputDesign(
        key: Key("height1"),
        widthtextfield: deviceWidth(context, 0.43),
        // controller: model.signupname,
        inputHeaderName:'Height' ,
        hintText: 'Enter your Weight',
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
      ),
      AllInputDesign(
        key: Key("height2"),
        // controller: model.signupname,
        inputHeaderName:'' ,
              widthtextfield: deviceWidth(context, 0.43),
        hintText: 'inch',
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
      ),
    ],
  );
}

Widget weightkg(model) {
  return AllInputDesign(
    key: Key("weightkg"),
    // controller: model.signupname,
    inputHeaderName:'Weight(kgs)' ,
    hintText: 'Enter your Weight',
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

Widget occupationdropdoun(context, model) {
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

Widget gender1dropdown(context, model) {
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

Widget relationshipdropdown(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Relationship',
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
            value: model.chosenrelationship,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.relationshipList.map<DropdownMenuItem<String>>((value1) {
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
              'Relationship',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (valuegender) {
              model.togglerelationship(valuegender);
            },
          ),
        ),
      ),
    ],
  );
}

Widget selectdobform(context, model) {
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

Widget submitinsuranceformbtn(context, model) {
  return Button(
    buttonName: 'Submit',
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => MedicalQustionPage());
    },
  );
}


