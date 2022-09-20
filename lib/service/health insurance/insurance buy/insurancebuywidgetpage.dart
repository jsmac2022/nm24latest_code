// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/insurancebuysubmitform.dart';
import 'package:nm24/service/health%20insurance/insuranceplandetailpage.dart/detailpage.dart';

Widget showplanheader(context) {
  return Container(
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(color: colorsanderchat, borderRadius: borderRadiuscircular(12.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Showing Plans Based On',
          style: textstyletitleHeading6(context),
        ),
        sizedboxheight(7.0),
        Row(
          children: [
            Text(
              'Coverage : ',
              style: textstylesubtitle1(context),
            ),
            Text(
              '3 Lakhs',
              style: textstyletitleHeading6(context),
            ),
          ],
        ),
        sizedboxheight(7.0),
        Row(
          children: [
            Text(
              'Tenure : ',
              style: textstylesubtitle1(context),
            ),
            Text(
              '1 Year',
              style: textstyletitleHeading6(context),
            ),
          ],
        ),
        sizedboxheight(7.0),
        Row(
          children: [
            Text(
              'Police Type : ',
              style: textstylesubtitle1(context),
            ),
            Text(
              '1 Individual',
              style: textstyletitleHeading6(context),
            ),
          ],
        ),
        sizedboxheight(7.0),
        Text(
          'Change Details',
          style: textstyletitleHeading6(context)!.copyWith(color: colorredlight),
        ),
      ],
    ),
  );
}

Widget buyinsurancewidget(context) {
  return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(border: borderCustom(), borderRadius: borderRadiuscircular(12.0)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage('assets/images/banklogo.png')),
                    Text(
                      '€ 950',
                      style: textstyletitleHeading6(context),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Arogya Sanjeevani Cover : ',
                          style: textstyletitleHeading6(context),
                        ),
                        Text(
                          '€ 7,00,000',
                          style: textstyletitleHeading6(context),
                        ),
                      ],
                    ),
                    sizedboxheight(7.0),
                    Row(
                      children: [
                        Text(
                          'Claim Settlement Ratio : ',
                          style: textstylesubtitle1(context),
                        ),
                        Text(
                          '90%',
                          style: textstyletitleHeading6(context)!.copyWith(color: Colors.greenAccent),
                        ),
                      ],
                    ),
                    sizedboxheight(7.0),
                    Row(
                      children: [
                        Text(
                          'Cashless Network Hospitals : ',
                          style: textstylesubtitle1(context),
                        ),
                        Text(
                          '7000+',
                          style: textstyletitleHeading6(context)!.copyWith(color: Colors.greenAccent),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: colorsanderchat,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                      onPressed: () {
                        Get.to(() => HealthInsurancePlandetailPage());
                      },
                      btnWidth: deviceWidth(context, 0.3),
                      buttonName: 'View Details',
                      textColor: colorredlight,
                      btnHeight: 28,
                      btnColor: colorWhite,
                      elevation: 0,
                      borderRadius: borderRadiuscircular(28.0),
                      borderColor: colorredlight,
                      btnstyle: TextStyle(fontSize: 12.5, color: colorredlight),
                    ),
                    Button(
                      onPressed: () {
                        Get.to(() => InsuranceFormPage());
                      },
                      btnWidth: deviceWidth(context, 0.3),
                      buttonName: 'Buy Now',
                      btnHeight: 28,
                      elevation: 0,
                      borderRadius: borderRadiuscircular(28.0),
                      borderColor: colorredlight,
                      btnstyle: TextStyle(fontSize: 12.5, color: colorWhite),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
}
