// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar_modelpage.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/dashboard/propertydetails/propertydetailspage.dart';
import 'package:provider/provider.dart';

Widget searchtextfield(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: AllInputDesign(
      fillColor: colorblack.withOpacity(0.05),
      key: Key("signupemail"),
      hintText: 'Search address,city,location',
      floatingLabelBehavior: FloatingLabelBehavior.never,
      textInputAction: TextInputAction.done,
      prefixIcon: IconButton(
          onPressed: () async{
              await Provider.of<BottomnavbarModelPage>(context, listen: false).togglebottomindexreset();
            Get.offAll(()=>BottomNavBarPage());
          },
          icon: Icon(Icons.arrow_back)),
      suffixIcon: IconButton(onPressed: () {}, icon: Image(image: AssetImage('assets/icons/search.png'))),
      keyBoardType: TextInputType.emailAddress,
    ),
  );
}
