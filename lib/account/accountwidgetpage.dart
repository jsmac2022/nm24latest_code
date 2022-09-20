// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/styles/const.dart';

Widget accountwidget(context, image, title, ontap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Material(
      borderRadius: BorderRadius.circular(11),
      color: colorWhite,
      child: InkWell(
          onTap: () async {
            Get.to(ontap);
          },
          child: Container(
            // height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Colors.transparent,
              boxShadow: boxShadowcontainer(),
              borderRadius: BorderRadius.circular(11),
              border: borderCustomlight()
            ),
            child: ListTile(
                minLeadingWidth: 5,
                leading: Container(
                    padding: EdgeInsets.only(top: 2),
                    // width: 21,
                    height: 21,
                    child: Image(
                      image: AssetImage(image),
                    )),
                title: Text(
                  title,
                  style: textstyletitleHeading6(context),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                )),
          )),
    ),
  );
}

Widget notificationSwitchSetting(context, model) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Material(
      borderRadius: BorderRadius.circular(11),
      color: colorWhite,
      child: InkWell(
          onTap: () async {
            // Get.to(ontap);
          },
          child: Container(
            // height: 50,
            decoration: BoxDecoration(
              color:colorWhite,
              boxShadow: boxShadowcontainer(),
              borderRadius: BorderRadius.circular(11),
            ),
            child: ListTile(
                contentPadding: EdgeInsets.only(left: 0, right: 14),
                minLeadingWidth: 5,
                leading: Transform.scale(
                  scale: 0.6,
                  child: CupertinoSwitch(
                      value: model.switchVal,
                      activeColor: colorskyblue,
                      onChanged: (value) {
                        model.toggleSwitchbtn();
                      }),
                ),
                title: Transform.translate(
                  offset: Offset(-18, 0),
                  child: Text(
                    'Switch to hosting',
                    style: textstyletitleHeading6(context),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                )),
          )),
    ),
  );
}
