// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

Widget page4(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      p4screenshotcontainer(context),
      sizedboxheight(15.0),
      headingperawidget(context, 'Other Documents',
          "iterature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very pop"),
      sizedboxheight(15.0),
      titletext(context, 'Please use the file formate PDF,JPG or PNG'),
      sizedboxheight(35.0),
      titletext(context, 'Select photo'),
      sizedboxheight(15.0),
      selectcamerabox(context),
      sizedboxheight(28.0),
      titletext(context, 'personal liability insurance policy'),
      sizedboxheight(15.0),
      selectfilebox(context),
      sizedboxheight(15.0),
      titletext(context, 'Sallary Certificate'),
      sizedboxheight(15.0),
      screenshotbox(context),
      sizedboxheight(15.0),
      titletext(context, 'Other Documents'),
      sizedboxheight(5.0),
      Text('Examples : ID, passport, residence permit,Motivation letter'),
      sizedboxheight(15.0),
      selectfilebox(context),
      sizedboxheight(15.0),
      adddocumentbox(context),
      sizedboxheight(15.0),
      p4furtherpicbtn(context, model),
      sizedboxheight(15.0),
      p4savepicbtn(context, model),
      sizedboxheight(15.0),
    ],
  );
}

Widget titletext(context, title) {
  return Text(
    title,
    style: textstyletitleHeading6(context),
  );
}

Widget p4screenshotcontainer(context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    width: deviceWidth(context, 1.0),
    height: 100,
    decoration: BoxDecoration(color: colorredlight.withOpacity(0.2), borderRadius: borderRadiuscircular(12.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Except from the debt collection register',
          style: textstyletitleHeading6(context),
        ),
        sizedboxheight(2.0),
        Container(

            // height: 50,
            decoration: BoxDecoration(color: colorWhite, borderRadius: borderRadiuscircular(12.0)),
            child: ListTile(
              dense: true,
              minLeadingWidth: 0,
              leading: CircleAvatar(
                backgroundColor: colorredlight.withOpacity(0.2),
                radius: 16,
                child: Container(
                  color: colorredlight.withOpacity(0.2),
                  child: Image.asset('assets/icons/gellery.png'),
                  width: 15,
                  height: 15,
                ),
              ),
              title: Text(
                'ScreenShot 2021112',
                style: textstyletitleHeading6(context),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_forever_outlined,
                    color: colorredlight,
                  )),
            ))
      ],
    ),
  );
}

Widget selectcamerabox(context) {
  return AnimatedContainer(
    width: deviceWidth(context, 1.0),
    height: deviceWidth(context, 0.3),
    duration: Duration(milliseconds: 100),
    decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: boxShadowcontainer(),
        border: borderCustomlight(),
        borderRadius: borderRadiuscircular(12.0)),
    child: Material(
        borderRadius: borderRadiuscircular(12.0),
        color: colorWhite,
        child: InkWell(
          borderRadius: borderRadiuscircular(12.0),
          onTap: () {},
          child: Center(
            child: Image(image: AssetImage('assets/icons/camera.png')),
          ),
        )),
  );
}

Widget selectfilebox(context) {
  return AnimatedContainer(
    width: deviceWidth(context, 1.0),
    height: deviceWidth(context, 0.3),
    duration: Duration(milliseconds: 100),
    decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: boxShadowcontainer(),
        border: borderCustomlight(),
        borderRadius: borderRadiuscircular(12.0)),
    child: Material(
      borderRadius: borderRadiuscircular(12.0),
      color: colorWhite,
      child: InkWell(
        borderRadius: borderRadiuscircular(12.0),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/icons/gellery.png')),
            Text(
              'Choose a file',
              style: textstyletitleHeading6(context),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget adddocumentbox(context) {
  return AnimatedContainer(
    width: 150,
    height: 45,
    duration: Duration(milliseconds: 100),
    decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: boxShadowcontainer(),
        border: borderCustomlight(),
        borderRadius: borderRadiuscircular(12.0)),
    child: Material(
      borderRadius: borderRadiuscircular(12.0),
      color: colorWhite,
      child: InkWell(
        borderRadius: borderRadiuscircular(12.0),
        onTap: () {},
        child: Center(
          child: Text(
            '+ Add document',
            style: textstyletitleHeading6(context),
          ),
        ),
      ),
    ),
  );
}

Widget screenshotbox(context) {
  return Container(

      // height: 50,
      decoration: BoxDecoration(
          color: colorWhite,
          border: borderCustomlight(),
          boxShadow: boxShadowcontainer(),
          borderRadius: borderRadiuscircular(12.0)),
      child: ListTile(
        dense: true,
        minLeadingWidth: 0,
        leading: CircleAvatar(
          backgroundColor: colorredlight.withOpacity(0.2),
          radius: 16,
          child: Container(
            color: colorredlight.withOpacity(0.2),
            child: Image.asset('assets/icons/gellery.png'),
            width: 15,
            height: 15,
          ),
        ),
        title: Text(
          'ScreenShot 2021112',
          style: textstyletitleHeading6(context),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_forever_outlined,
              color: colorredlight,
            )),
      ));
}

Widget p4furtherpicbtn(context, model) {
  return Button(
    buttonName: 'Further',
    borderRadius: borderRadiuscircular(28.0),
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => BottomNavBarPage());
    },
  );
}

Widget p4savepicbtn(context, model) {
  return Button(
    onPressed: () {
      model.decresestep();
    },
    buttonName: 'Return',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}
