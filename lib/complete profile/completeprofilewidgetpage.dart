// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'dart:io';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/upload%20document/uploaddocumentpage.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget linearprogressindicator(model) {
  return SizedBox(
    height: 50,
    child: Stack(
      children: <Widget>[
        SizedBox.expand(
          child: StepProgressIndicator(
            size: 18,
            fallbackLength: 200,
            currentStep: model.progressStep,
            padding: 0,
            totalSteps: 7,
            selectedColor: colorskyblue,
            unselectedColor: colorskyblue.withOpacity(0.2),
            roundedEdges: Radius.circular(10),
          ),
        ),
        Center(child: Text("Timeout of phase communications")),
      ],
    ),
  );
}

Widget headingtext(context, title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: textstyleHeading1(context)!
        .copyWith(color: colorblack, fontWeight: fontWeight900),
  );
}

Widget furtherpicbtn(context, model) {
  return Button(
    buttonName: 'Further',
    btnWidth: deviceWidth(context, 0.8),
    borderRadius: borderRadiuscircular(28.0),
    key: Key('login_submit'),
    onPressed: () {
      model.incresestep();
    },
  );
}

Widget savepicbtn(context, model) {
  return Button(
    onPressed: () {
      model.incresestep(); //newadded
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

Widget steprs(context, model) {
  return Column(children: [
    if (model.progressStep == 1) ...[
      sizedboxheight(30.0),
      headingtext(context, 'My Profile picture'),
      sizedboxheight(22.0),
      myprofilepicchange(context,model),
      sizedboxheight(deviceheight(context, 0.1)),
    ] else if (model.progressStep == 2) ...[
      sizedboxheight(30.0),
      headingtext(context, 'My gender'),
      sizedboxheight(22.0),
      mygender(context, model),
      sizedboxheight(deviceheight(context, 0.02)),
    ] else if (model.progressStep == 3) ...[
      sizedboxheight(22.0),
      headingtext(context, 'My marital status'),
      sizedboxheight(22.0),
      mymaritalstatus(context, model),
      sizedboxheight(deviceheight(context, 0.02)),
    ] else if (model.progressStep == 4) ...[
      sizedboxheight(22.0),
      headingtext(context, 'I work as'),
      sizedboxheight(deviceheight(context, 0.1)),
      profesion(model),
      sizedboxheight(deviceheight(context, 0.1)),
    ] else if (model.progressStep == 5) ...[
      sizedboxheight(22.0),
      headingtext(context, 'I have children'),
      sizedboxheight(deviceheight(context, 0.05)),
      mychildren(context, model),
      sizedboxheight(deviceheight(context, 0.1)),
    ] else if (model.progressStep == 6) ...[
      sizedboxheight(22.0),
      headingtext(context, 'My monthly net Household income'),
      sizedboxheight(deviceheight(context, 0.03)),
      householdincome(context, model),
      sizedboxheight(deviceheight(context, 0.05)),
    ] else if (model.progressStep == 7) ...[
      sizedboxheight(22.0),
      headingtext(context, 'Upload your documents'),
      sizedboxheight(22.0),
      uploaddocument(context, 'assets/icons/setting.png', 'Passport/ID',
          UploaddoumentPage(),),
      uploaddocument(context, 'assets/icons/setting.png',
          'Excerpt from the debt collection register',
          UploaddoumentPage(),),
      uploaddocument(context, 'assets/icons/setting.png', 'Family photo',
          UploaddoumentPage(),),
      uploaddocument(context, 'assets/icons/setting.png', 'Other documents',
          UploaddoumentPage(),),
      sizedboxheight(deviceheight(context, 0.05)),
      takeoverbtn(context),
      resetdefaultbtn(context)
    ]
  ]);
}

Widget myprofilepicchange(context,model) {
  return Container(
    width: 200, //150
    height: 200,  //150
    decoration: BoxDecoration(
        color: colorsanderchat, borderRadius: borderRadiuscircular(100.0)),
    child: GestureDetector(
      onTap: (){
        model.getImage(context, model); //calling fun for uplode profile pic
      },
      child: model.profilePath==null?Image(
        image:  AssetImage(
          'assets/icons/plus.png',
        ),
        /*image: model.profilePath==""?AssetImage(
          'assets/icons/plus.png',
        ):Image.file(i.File(model.profilePath)),*/
        color: colorskyblue,
      ):Image.file(File(model.profilePath),),
    ),
  );
}

Widget mygender(context, model) {
  return CustomRadioButton(
    enableShape: true,
    horizontal: true,
    radius: 10,
    shapeRadius: 10,
    height: 55,
    elevation: 4,
    radioButtonValue: (value) {
      model.toggleselectgender(value);
    },
    buttonValues: [
      "Male",
      "Female",
      "Diverse",
    ],
    buttonLables: [
      "Male",
      "Female",
      "Diverse",
    ],
    selectedColor: colorredlight,
    selectedBorderColor: colorredlight,
    unSelectedBorderColor: colorWhite,
    unSelectedColor: colorWhite,
    buttonTextStyle: ButtonTextStyle(
        selectedColor: colorWhite,
        unSelectedColor: colorblack,
        textStyle: TextStyle(fontSize: 16)),
  );
}

Widget mymaritalstatus(context, model) {
  return CustomRadioButton(
    horizontal: true,
    enableShape: true,
    radius: 10,
    shapeRadius: 10,
    height: 55,
    elevation: 4,
    radioButtonValue: (value) {
      //model.toggleselectgender(value);
       model.getMaritalStatus();
    },
    buttonValues: [
      "Single",
      "Married",
      "Registered life partnership",
      "Partenership / relationship"
    ],
    buttonLables: [
      "Single",
      "Married",
      "Registered life partnership",
      "Partenership / relationship"
    ],
    selectedColor: colorredlight,
    selectedBorderColor: colorredlight,
    unSelectedColor: colorWhite,
    unSelectedBorderColor: colorWhite,
    buttonTextStyle: ButtonTextStyle(
        selectedColor: colorWhite,
        unSelectedColor: colorblack,
        textStyle: TextStyle(fontSize: 16)),
  );
}

Widget profesion(model) {
  return AllInputDesign(
    key: Key("fullname"),
    boxshadow: boxShadowcontainer(),
    //controller: model.getWorkType(),
    inputHeaderName: 'Enter Profession',
    floatingLabelBehavior: FloatingLabelBehavior.never,
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

Widget mychildren(context, model) {
  return CustomRadioButton(
    enableShape: true,
    enableButtonWrap: true,
    radius: 10,
    shapeRadius: 10,
    height: 55,
    elevation: 5,
    radioButtonValue: (value) {
      //model.toggleselectgender(value);
      model.getChildren();
    },
    buttonValues: [
      "No",
      "1",
      "2",
      "3",
      "4",
      "5",
    ],
    buttonLables: [
      "No",
      "01",
      "02",
      "03",
      "04",
      "05",
    ],
    selectedColor: colorredlight,
    selectedBorderColor: colorredlight,
    unSelectedBorderColor: colorWhite,
    unSelectedColor: colorWhite,
    buttonTextStyle: ButtonTextStyle(
        selectedColor: colorWhite,
        unSelectedColor: colorblack,
        textStyle: TextStyle(fontSize: 16)),
  );
}

Widget householdincome(context, model) {
  return CustomRadioButton(
    horizontal: true,
    enableShape: true,
    radius: 10,
    shapeRadius: 10,
    height: 55,
    elevation: 4,
    radioButtonValue: (value) {
      //model.toggleselectgender(value);
      model.getIncome();
    },
    buttonValues: [
      "up to € 1,500",
      "1,500-3,000 €",
      "Over € 3,000",
    ],
    buttonLables: [
      "up to € 1,500",
      "1,500-3,000 €",
      "Over € 3,000",
    ],
    selectedColor: colorredlight,
    selectedBorderColor: colorredlight,
    unSelectedBorderColor: colorWhite,
    unSelectedColor: colorWhite,
    buttonTextStyle: ButtonTextStyle(
        selectedColor: colorWhite,
        unSelectedColor: colorblack,
        textStyle: textstyletitleHeading6(context)!
            .copyWith(fontWeight: fontWeight700)),
  );
}

Widget uploaddocument(context, image, title, ontap,) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Container(
      // height: 50,
      decoration: BoxDecoration(
          color: colorWhite,
          border: borderCustomlight(),
          boxShadow: boxShadowcontainer(),
          borderRadius: borderRadiuscircular(12.0)),
      child: ListTile(
          minLeadingWidth: 5,
          title: Text(
            title,
            style: textstyletitleHeading6(context),
          ),
          trailing: IconButton(
            onPressed: () {
              //model.postUploadDocument();
              Get.to(ontap);
            },
            icon: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: colorskyblue.withOpacity(0.5), width: 3),
                  borderRadius: borderRadiuscircular(18.0)),
              child: Icon(
                Icons.add,
                color: colorskyblue,
                size: 20,
              ),
            ),
          )),
    ),
  );
}

Widget takeoverbtn(context) {
  return Button(
    buttonName: 'Take over',
    btnWidth: deviceWidth(context, 0.8),
    borderRadius: borderRadiuscircular(28.0),
    key: Key('take'),
    onPressed: () {},
  );
}

Widget resetdefaultbtn(context) {
  return TextButton(
      onPressed: () {},
      child: Text(
        'Reset to default',
        style: textstyleHeading2(context)!.copyWith(
            fontSize: 18, color: colorredlight, fontStyle: FontStyle.italic),
      ));
}
