// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget appbarimage(context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 60,
          height: 50,
          child: Image.asset(
            'assets/images/image 140.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 45,
          child: TextButton(
            onPressed: () {
              Get.to(() => BottomNavBarPage());
            },
          
            child: Image.asset(
              'assets/icons/close.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget linearprogressindicatorform(model) {
  return StepProgressIndicator(
    size: 15,
    fallbackLength: 200,
    currentStep: model.progressStep,
    padding: 3,
    totalSteps: 4,
    selectedColor: colorskyblue,
    unselectedColor: colorskyblue.withOpacity(0.2),
    roundedEdges: Radius.circular(10),
  );
}
