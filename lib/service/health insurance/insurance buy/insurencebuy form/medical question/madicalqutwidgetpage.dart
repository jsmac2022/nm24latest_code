// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/nominiee/nomineepage.dart';


Widget madicalqutradiobtn(context, model) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          // padding: EdgeInsets.all(15.0),
          width: deviceWidth(context, 1.0),
          decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: borderRadiuscircular(12.0),
              border: borderCustomlight(),
              boxShadow: boxShadowcontainer()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Text('Is the insured member suffering from any illness or disease?'),
              ),
              RadioGroup<String>.builder(
                direction: Axis.horizontal,
                activeColor: colorredlight,
                spacebetween: 0,
                horizontalAlignment: MainAxisAlignment.start,
                groupValue: model.toogleradiobtnvalue(index),
                onChanged: (value) {
                  model.toogleradiobtn(index,value);
                },
                items: model.radiobtnLabellist,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
              ),
            ],
          ),
        );
      });
}

Widget submitmedqutbtn(context, model) {
  return Button(
    buttonName: 'Submit',
    key: Key('login_submit'),
    onPressed: () {
      Get.to(() => NomineePage());
    },
  );
}