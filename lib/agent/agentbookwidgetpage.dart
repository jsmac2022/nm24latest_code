// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'bookmeating/bookmeatingpage.dart';

Widget agentbookwidget(context) {
  return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(borderRadius: borderRadiuscircular(12.0), border: borderCustom()),
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: borderRadiuscircular(12.0),
                          child: SizedBox(
                            width: 70,
                            height: 75,
                            child: Image(image: AssetImage('assets/images/user.png')),
                          ),
                        ),
                        sizedboxwidth(6.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Wade Warren',
                              style: textstyletitleHeading6(context),
                            ),
                            Text(
                              'German,English,Ittalin',
                              style: textstylesubtitle1(context),
                            ),
                            Text(
                              '10y experiance',
                              style: textstylesubtitle1(context),
                            ),
                            Text(
                              'zurich',
                              style: textstylesubtitle1(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                              image: AssetImage('assets/icons/not1.png'),
                              color: colorredlight,
                              width: 15,
                            ),
                            sizedboxwidth(10.0),
                            Image(
                              image: AssetImage('assets/icons/calling.png'),
                              color: colorredlight,
                              width: 15,
                            ),
                          ],
                        ),
                        Material(
                          shadowColor: colorredlight,
                          color: HexColor('#D47A30').withOpacity(0.2),
                          borderRadius: borderRadiuscircular(12.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                width: 70,
                                height: 22,
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(borderRadius: borderRadiuscircular(12.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/icons/star.png'),
                                      color: colorredlight,
                                      width: 10,
                                    ),
                                    sizedboxwidth(2.0),
                                    Text(
                                      '4.3 (12)',
                                      style: TextStyle(fontSize: 10, fontWeight: fontWeight700),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Button(
                onPressed: () {
                  Get.to(() => BookMeetingPage());
                },
                buttonName: 'Book a Meeting',
                btnHeight: 35,
                btnColor: colorsanderchat,
                elevation: 0,
                textColor: colorskyblue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
              )
            ],
          ),
        );
      });
}
