

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/appbar/appbarmodal.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar_modelpage.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/completeprofilemodelpage.dart';
import 'package:nm24/notification/notificationpage.dart';
import 'package:provider/provider.dart';

Widget notificationactionWidget(context) {
  var appbarmodal = Provider.of<AppbarmodalPage>(context, listen: false);
 
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationPage()));
          },
          icon: Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: colorblack,
                    size: 23,
                  ),
                  onPressed: () async {
                    await appbarmodal.counterreset();
                    Get.to(() => NotificationPage());
                  }),
              appbarmodal.counter != 0
                  ? Positioned(
                    top: 5,
                      right: 2,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 14,
                          minHeight: 14,
                        ),
                        child: Text(
                          '${appbarmodal.counter}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
        sizedboxwidth(10.0)
      ],
    );
 
}

Widget backbuttonAppbarwidget(title, context)  {
  return IconButton(
      onPressed: () async {
        if (title == 'Profile' || title == 'Chat' || title == 'Service' || title == 'Create Listing.') {
          await Provider.of<BottomnavbarModelPage>(context, listen: false).togglebottomindexreset();

          Get.offAll(() => BottomNavBarPage());
        } else if (title == 'Complete Profile') {
          final model = Provider.of<CompleteProfileModelPage>(context, listen: false);
          await model.decresestep();
       
        } else {
          Get.back();
        }
      },
      icon: Container(
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              color: colorWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: borderRadiuscircular(7.0),
              border: borderCustom()),
          child: Icon(
            Icons.arrow_back,color: colorblack,
          )));
}


